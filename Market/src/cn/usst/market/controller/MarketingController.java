package cn.usst.market.controller;

import cn.usst.market.annotation.MethodLog;
import cn.usst.market.mapper.MarketingMapper;
import cn.usst.market.po.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @author 陈立阳 Created by 陈立阳 on 2017/10/9.
 */
@Controller
public class MarketingController {

	@Autowired
	private MarketingMapper marketingMapper;

	@MethodLog(description = "品牌盈利能力")
	@RequestMapping("/brandProfit.do")
	public ModelAndView brandProfit(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		int companyId = (int) request.getSession().getAttribute("companyId");
		int quarter = Integer.parseInt(request.getParameter("quarter"));
		// 查询上个季度的品牌盈利
		List<Profit> list = marketingMapper.selectBrandProfitByCompanyId(companyId, quarter - 1);
		if (list.size() != 0) {
			for (Profit profit : list) {
				// 根据公司ID和产品ID查询产品名称
				String productName = marketingMapper.selectProductName1(profit.getCompanyId(), profit.getProductId());
				profit.setProductName(productName);
				// 计算某个产品的销售收入
				// 先查询产品售价
				String priceStr = marketingMapper.selectProductPrice1(profit.getProductId(), quarter - 1);
				int price;
				if (priceStr != null) {
					price = Integer.parseInt(priceStr);
				} else {
					price = 0;
				}
				// 再查询销量
				int sale = profit.getSale();
				int salesproceeds = price * sale;
				profit.setSalesproceeds(salesproceeds);
				// 查询品牌广告费用
				// 根据产品ID查询某个产品在各个媒体上投放的广告的费用
				// 先查询该产品在各个媒体上的投放数量
				List<MediaAdNum> list1 = marketingMapper.selectNumOfMediaAd(profit.getProductId(), quarter - 1);
				if (list1.size() != 0) {
					int cost = 0;
					// 在根据mediaId查找某个media上的费用
					for (MediaAdNum mediaAdNum : list1) {
						cost += marketingMapper.selectMediaCostByMediaId(mediaAdNum.getMediaId());
					}
					profit.setAdofbrand(cost);
				} else {
					profit.setAdofbrand(0);
				}

				// 计算毛利
				// 查询邮寄返款
				String postOfficeStr = marketingMapper.selectPostOffice(profit.getProductId(), quarter - 1);
				int postOffice;
				if (postOfficeStr != null) {
					postOffice = Integer.parseInt(postOfficeStr);
				} else {
					postOffice = 0;
				}
				profit.setPostoffice(postOffice);
				int grossmargin = profit.getSalesproceeds() - profit.getPostoffice() - profit.getCostofselling();
				profit.setGrossmargin(grossmargin);
				// 计算品牌费用
				int costofbrand = profit.getAdofbrand() + 10000;
				profit.setCostofbrand(costofbrand);
				// 计算利润
				int pro = profit.getGrossmargin() - profit.getCostofbrand();
				profit.setProfit(pro);
			}
		}
		System.out.println(list);
		modelAndView.addObject("brandList", list);
		modelAndView.setViewName("brandProfit");
		return modelAndView;
	}

	@MethodLog(description = "品牌评价")
	@RequestMapping("/brandEva.do")
	public ModelAndView brandEva(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		int competitionId = (int) request.getSession().getAttribute("competitionId");
		List<MarketShare> list = marketingMapper.selectMarketShareByCompetitionId(competitionId);
		System.out.println(list);
		List<String> list1;
		HashMap<Integer, List<String>> hashMap = new HashMap<>();
		for (MarketShare marketShare : list) {
			int companyId = marketShare.getCompanyId();
			String companyName = marketingMapper.selectCompanyName(companyId);
			int productId = marketShare.getProductId();
			String productName = marketingMapper.selectProductName(productId);
			list1 = new ArrayList<String>();
			list1.add(companyName);
			list1.add(productName);
			list1.add(marketShare.getProductType());
			list1.add(marketShare.getNeed().toString());
			hashMap.put(productId, list1);
		}
		modelAndView.addObject("hashMap", hashMap);
		modelAndView.setViewName("brandEva");
		return modelAndView;
	}

	@MethodLog(description = "竞争对手的品牌")
	@RequestMapping("/brandOfRival.do")
	public ModelAndView brandOfRival(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		// 获取竞赛ID
		int competitionId = (int) request.getSession().getAttribute("competitionId");
		System.out.println(competitionId);
		// 根据竞赛ID选择本次竞赛的公司名称和对应的产品名称
		List<BrandOfRival> brandOfRivals = marketingMapper.selectByCompetitionId(competitionId);
		int[] anArray = new int[10];
		int i = 0;
		String key;
		// 获取第一个companyId存入数组
		int companyId = brandOfRivals.get(0).getCompanyId();
		anArray[0] = companyId;
		// int数组存储一个companyId集合
		for (BrandOfRival brandOfRival : brandOfRivals) {
			if (brandOfRival.getCompanyId() != anArray[i]) {
				i++;
				if (i == 5) {
					break;
				}
				anArray[i] = brandOfRival.getCompanyId();
			}
		}
		HashMap<String, List<String>> hashMap = new HashMap<>();
		List<String> list;
		for (int j = 0; j < anArray.length; j++) {
			list = new ArrayList<>();
			for (BrandOfRival brandOfRival : brandOfRivals) {
				if (brandOfRival.getCompanyId() == anArray[j]) {
					// 遍历所有信息按照公司ID排序保存到list中
					list.add(brandOfRival.getBrandName());
					key = brandOfRival.getCompanyName();
					hashMap.put(key, list);
				}
			}
		}
		// 新建HashMap和List,hashMap的key为产品名称，value为组件详情
		HashMap<String, List<String>> hashMap1 = new HashMap<>();
		List<String> list1;
		// 获取组件信息
		for (BrandOfRival brandOfRival : brandOfRivals) {
			list1 = new ArrayList<>();
			// 获取组件编号列表
			String detail = brandOfRival.getDetail();
			String[] str = detail.split(",");
			for (String str1 : str) {
				// 将编号转换为整数
				int detailId = Integer.parseInt(str1);
				System.out.println(detailId);
				// 根据组件编号得到组件的详细描述
				String detailName = marketingMapper.selectProductDetail(detailId);
				// 添加组件详情到list中
				list1.add(detailName);
				// 设置当前遍历的产品信息名为key,然后将信息存入hashMap
				key = brandOfRival.getBrandName();
				hashMap1.put(key, list1);
			}
		}
		if (request.getSession().getAttribute("companyBrand") != null) {
			request.getSession().removeAttribute("companyBrand");
		}
		request.getSession().setAttribute("brandOfRival", hashMap);
		modelAndView.addObject("brandDetail", hashMap1);
		modelAndView.setViewName("brandOfRival");
		return modelAndView;
	}

	@MethodLog(description = "显示组件信息")
	@RequestMapping("/brandDetail.do")
	public ModelAndView brandDetail(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		int competitionId = (int) request.getSession().getAttribute("competitionId");
		String companyName = request.getParameter("companyName");
		List<BrandOfRival> companyBrand = marketingMapper.selectProductDetail1(competitionId, companyName);
		// 新建HashMap和List,hashMap的key为产品名称，value为组件详情
		HashMap<String, List<String>> hashMap = new HashMap<>();
		if (request.getSession().getAttribute("companyBrand") == null) {
			// 获取组件信息
			for (BrandOfRival brandOfRival : companyBrand) {
				List<String> list = new ArrayList<>();
				// 获取组件编号列表
				String key = brandOfRival.getBrandName();
				String detail = brandOfRival.getDetail();
				String[] str = detail.split(",");
				for (String str1 : str) {
					// 将编号转换为整数
					int detailId = Integer.parseInt(str1);
					System.out.println(detailId);
					// 根据组件编号得到组件的详细描述
					String detailName = marketingMapper.selectProductDetail(detailId);
					// 添加组件详情到list中
					list.add(detailName);
				}
				// 设置当前遍历的产品信息名为key,然后将信息存入hashMap
				hashMap.put(key, list);
			}
			modelAndView = brandOfRival(request);
			// 清除原有的ModelAndView信息
			modelAndView.clear();
			// 第一次显示某个公司的产品信息时
			request.getSession().setAttribute("companyBrand", hashMap);
			modelAndView.setViewName("brandOfRival");
		} else {
			// 点击同一个公司的CheckBox框或者其他公司的CheckBox框
			hashMap = (HashMap<String, List<String>>) request.getSession().getAttribute("companyBrand");

			for (BrandOfRival brandOfRival : companyBrand) {
				// 第一种情况：点击了同一个公司的CheckBox框两次,即hashMap的key值已经存在传递过来的公司下的产品
				if (hashMap.containsKey(brandOfRival.getBrandName())) {
					hashMap.remove(brandOfRival.getBrandName());
				}
				// 第二种情况：点击了新的公司的checkbox
				else {
					String key = brandOfRival.getBrandName();
					String detail = brandOfRival.getDetail();
					String[] str = detail.split(",");
					List list = new ArrayList();
					// 组件信息
					for (String str1 : str) {
						// 将编号转换为整数
						int detailId = Integer.parseInt(str1);
						// 根据组件编号得到组件的详细描述
						String detailName = marketingMapper.selectProductDetail(detailId);
						// 添加组件详情到list中
						list.add(detailName);
					}
					// 设置当前遍历的产品信息名为key,然后将信息存入hashMap
					hashMap.put(key, list);
				}
			}
			modelAndView = brandOfRival(request);
			// 清除原有的ModelAndView信息
			modelAndView.clear();
			// 第一次显示某个公司的产品信息时
			request.getSession().setAttribute("companyBrand", hashMap);
			modelAndView.setViewName("brandOfRival");
		}
		modelAndView.addObject("flag", companyName);
		return modelAndView;
	}

	@MethodLog(description = "竞争对手的价格")
	@RequestMapping("/priceOfRival.do")
	public ModelAndView priceOfRival(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		int companyId = (int) request.getSession().getAttribute("companyId");
		int competitionId = marketingMapper.selectCompetitionIdByCompanyId(companyId);
		List<ProductPrice> priceList = marketingMapper.selectProductPrice(competitionId);
		List<String> list1;
		HashMap<Integer, List<String>> hashMap1 = new HashMap<>();
		for (ProductPrice productPrice : priceList) {
			companyId = productPrice.getCompanyId();
			String companyName = marketingMapper.selectCompanyName(companyId);
			int productId = productPrice.getProductId();
			String productName = marketingMapper.selectProductName(productId);
			list1 = new ArrayList<>();
			list1.add(companyName);
			list1.add(productName);
			if (productPrice.getPrice() == null) {
				productPrice.setPrice(0);
			}
			list1.add(productPrice.getPrice().toString());
			if (productPrice.getYouji() == null) {
				productPrice.setYouji(0);
			}
			list1.add(productPrice.getYouji().toString());
			hashMap1.put(productPrice.getProductId(), list1);
		}
		modelAndView.addObject("productPrice", hashMap1);
		modelAndView.setViewName("priceOfRival");
		return modelAndView;
	}

	@MethodLog(description = "生产成本")
	@RequestMapping("/priceOfPro.do")
	public ModelAndView priceOfPro(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		int companyId = (Integer) request.getSession().getAttribute("companyId");
		List<CostOfProduction> list = marketingMapper.selectCostOfProduction(companyId);
		modelAndView.addObject("cost", list);
		modelAndView.setViewName("priceOfPro");
		return modelAndView;
	}

	@MethodLog(description = "价格及销售优先级别")
	@RequestMapping("/priceAndSale.do")
	public ModelAndView priceAndSale(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		int companyId = (Integer) request.getSession().getAttribute("companyId");
		int quarter = Integer.parseInt(request.getParameter("quarter"));
		// 查询上季度价格及销售信息
		List<PriceSale> list = marketingMapper.selectPriceAndSale(companyId, quarter - 1);
		for (PriceSale priceSale : list) {
			String productName = marketingMapper.selectProductName1(priceSale.getCompanyId(), priceSale.getProductId());
			priceSale.setProductName(productName);
		}
		modelAndView.addObject("priceList", list);
		modelAndView.setViewName("priceAndSale");
		return modelAndView;
	}

	@MethodLog(description = "竞争对手的广告")
	@RequestMapping("/adOfRival1.do")
	public ModelAndView adOfRival1(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		// 定义一个string数组存放广告详情信息
		String[] strings = { "邮寄返款-特价", "高速处理，低任务时耗", "附赠多种应用软件", "市场上最强劲的手机", "市场上最高的数据存储容量", "当地销售及售后服务",
				"更大屏幕，减少视疲劳", "使用方便，设计精简", "图像细致，分辨率高" };
		// 获取竞赛ID
		int competitionId = (int) request.getSession().getAttribute("competitionId");
		// 获取产品的广告信息
		List<AdDetail> list = marketingMapper.selectAdDetailByCompetitionId(competitionId);
		HashMap<String, AdDetail> hashMap = new HashMap<String, AdDetail>();
		for (AdDetail adDetail : list) {
			String advertiseId = adDetail.getAdvertiseId();
			String[] adIdStr = advertiseId.split(",");
			// 遍历广告详情ID，根据ID查询广告详情
			for (String str : adIdStr) {
				int id = Integer.parseInt(str);
				String detail = marketingMapper.selectAdDetailById(id);
				if (detail.equals(strings[0])) {
					adDetail.setDetail1(detail);
				} else if (detail.equals(strings[1])) {
					adDetail.setDetail2(detail);
				} else if (detail.equals(strings[2])) {
					adDetail.setDetail3(detail);
				} else if (detail.equals(strings[3])) {
					adDetail.setDetail4(detail);
				} else if (detail.equals(strings[4])) {
					adDetail.setDetail5(detail);
				} else if (detail.equals(strings[5])) {
					adDetail.setDetail6(detail);
				} else if (detail.equals(strings[6])) {
					adDetail.setDetail7(detail);
				} else if (detail.equals(strings[7])) {
					adDetail.setDetail8(detail);
				} else if (detail.equals(strings[8])) {
					adDetail.setDetail9(detail);
				}
			}
			hashMap.put(adDetail.getCompanyId() + "_" + adDetail.getProductId(), adDetail);
		}
		modelAndView.addObject("adDetailInfo", hashMap);
		modelAndView.setViewName("adOfRival");
		return modelAndView;
	}

	@MethodLog(description = "设计广告")
	@RequestMapping(value = "/adDesign.do")
	public ModelAndView adDesign(HttpServletRequest request) {
		int companyId = (int) request.getSession().getAttribute("companyId");
		int quarter = Integer.parseInt(request.getParameter("quarter"));// 当前季度
		// 查询当前公司上个季度的所有广告
		List<CompanyAd> companyAds = marketingMapper.selectAdByCompanyIdAndQuarter(companyId, quarter - 1);
		// 添加当前季度的广告
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("companyAds", companyAds);
		modelAndView.setViewName("adDesign");
		modelAndView.addObject("quarter",quarter);
		return modelAndView;
	}

	@MethodLog(description = "查看广告详情")
	@RequestMapping(value = "/showAdDetail.do")
	public ModelAndView showAdDetail(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		int productId = Integer.parseInt(request.getParameter("productId"));
		String adName = request.getParameter("adName");
		AdPojo adPojo = marketingMapper.selectAdByProductIdAndAdName(productId, adName);
		System.out.println(adPojo);
		// 获取产品广告详情编号
		String[] adId = adPojo.getAdvertiseId().split(",");
		List<String> list = new ArrayList<>();
		for (String str : adId) {
			int id = Integer.parseInt(str);
			String detail = marketingMapper.selectAdDetailById(id);
			list.add(detail);
		}
		modelAndView.addObject("adInfo", adPojo);
		modelAndView.addObject("detailList", list);
		modelAndView.setViewName("queryAd");
		return modelAndView;
	}

	@MethodLog(description = "主流媒体投放")
	@RequestMapping(value = "/adOfMain.do")
	public ModelAndView adOfMain(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		int companyId = (int) request.getSession().getAttribute("companyId");
		int quarter = Integer.parseInt(request.getParameter("quarter"));
		List<MainMedia> list = marketingMapper.selectMainMedia(companyId);
		for (MainMedia mainMedia : list) {
			int productId = mainMedia.getProductId();
			String productName = marketingMapper.selectProductName1(companyId, productId);
			mainMedia.setProductName(productName);
			String costStr = marketingMapper.selectPostOffice(productId, quarter - 1);
			if (costStr == null) {
				mainMedia.setCost(0);
			} else {
				int cost = Integer.parseInt(costStr);
				mainMedia.setCost(cost);
			}
		}
		modelAndView.addObject("mainMediaInfo", list);
		modelAndView.setViewName("adOfMain");
		return modelAndView;
	}

	@MethodLog(description = "核查广告语")
	@RequestMapping(value = "/adCheck.do")
	public ModelAndView adCheck(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		int companyId = (int) request.getSession().getAttribute("companyId");
		int quarter = Integer.parseInt(request.getParameter("quarter"));
		// 查询当前公司当前季度的所有广告名称
		List<CheckResult> list = marketingMapper.selectAllAdInfo(companyId, quarter);
		for (CheckResult checkResult : list) {
			if ("mmp".equals(checkResult.getAdvertiseName())) {
				checkResult.setResult("检查不通过");
			} else {
				checkResult.setResult("检查通过");
			}
		}
		modelAndView.addObject("checkResultList", list);
		modelAndView.setViewName("adCheck");
		return modelAndView;
	}

	@MethodLog(description = "购买市场调研报告")
	@RequestMapping(value = "/buyInvesReport.do")
	public ModelAndView buyInvesReport() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("buyInvesReport");
		return modelAndView;
	}

}
