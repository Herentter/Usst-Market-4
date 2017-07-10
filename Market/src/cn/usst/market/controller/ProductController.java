package cn.usst.market.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.Page;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.service.ProductInfoService;

@Controller
public class ProductController {
	@Autowired
	private ProductInfoService proInfoService;

	@RequestMapping(value = "/queryProductInfo.do")
	public ModelAndView getAllProductInfo(HttpServletRequest request) {
		// 获取页面参数,分页查询的用户的类型和每页要显示的记录数
		String countStr = request.getParameter("count");
		int count = Integer.parseInt(countStr);

		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		// 第一次执行时当前页面为1
		String curPage = request.getParameter("pageIndex");
		if (curPage == null || "".equals(curPage.toString().trim())) {
			curPage = "1";
		}
		int currentPage = Integer.parseInt(curPage);
		// 初始化一个封装页面的值
		Page<ProductInfo> pageProInfo = new Page<ProductInfo>();

		// 获取页面总记录数
		pageProInfo.setTotalCount(proInfoService.getTotalCount());
		int totalCount = pageProInfo.getTotalCount();

		// 获取每页要显示的记录数
		pageProInfo.setPageCount(count);
		int pageCount = pageProInfo.getPageCount();

		// 计算总页数
		if (totalCount % pageCount == 0) {
			pageProInfo.setTotalPage(totalCount / pageCount);
		} else {
			pageProInfo.setTotalPage(totalCount / pageCount + 1);
		}

		// 当前为第一页的时候若再点击上一页，当前页会变成0；同理当为最后一页的时候同样会出现问题
		if (currentPage < 1) {
			currentPage = 1;
		}
		if (currentPage > pageProInfo.getTotalPage()) {
			currentPage = pageProInfo.getTotalPage();
		}

		// 设置当前页
		pageProInfo.setCurrentPage(currentPage);

		// 求出起始索引
		int index = (currentPage - 1) * pageProInfo.getPageCount();

		// 分页查询用户
		List<ProductInfo> proInfoList = proInfoService.queryProductInfoByPage(index, pageCount);

		// 封装查询到的 数据
		pageProInfo.setPage(proInfoList);

		// 返回到前台页面
		modelAndView.addObject("pageData", pageProInfo);
		modelAndView.setViewName("productInfo");

		return modelAndView;
	}

	@SuppressWarnings("null")
	@RequestMapping("/operateProductInfo.do")
	public ModelAndView oporateUser(HttpServletRequest request) throws Exception {
		// 获取操作的方法
		String method = request.getParameter("method");
		System.out.println(method);
		// 初始化一个ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		if (method != null || !("".equals(method.toString().trim()))) {
			if (method.equals("update")) {
				// 获取为修改前的ID
				String idString = request.getParameter("idSession");
				int idSession = Integer.parseInt(idString);
				System.out.println(idSession);
				// 封装管理员信息
				Map<String, String> proInfoMap = new HashMap<String, String>();
				proInfoMap.put("id", request.getParameter("id"));
				proInfoMap.put("detail", request.getParameter("detail"));
				proInfoMap.put("title", request.getParameter("title"));
				proInfoMap.put("price", request.getParameter("price"));
				ProductInfo proInfo = new ProductInfo();
				BeanUtils.populate(proInfo, proInfoMap);
				System.out.println(proInfo);
				proInfoService.updateProductInfo(proInfo, idSession);
				modelAndView.setViewName("user-query");
			} else if (method.equals("delete")) {
				String idStr = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				proInfoService.deleteProductInfoById(id);
				modelAndView.setViewName("user-query");
			}
		} else {
			modelAndView.addObject("failed", "操作失败！");
			modelAndView.setViewName("failed");
		}
		return modelAndView;
	}
}
