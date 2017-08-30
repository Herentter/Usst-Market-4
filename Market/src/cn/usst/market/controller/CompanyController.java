package cn.usst.market.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.CapacityInfo;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyProduct;
import cn.usst.market.po.CompanyStrategy;
import cn.usst.market.po.Competition;
import cn.usst.market.po.Duty;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.Member;
import cn.usst.market.po.Page;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.po.StrategyInfo;
import cn.usst.market.po.Teacher;
import cn.usst.market.po.TeacherQueryVo;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.CompetitionService;
import cn.usst.market.service.MemberService;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CompetitionService competitionService;
	
	
	
	
	
	@RequestMapping(value="/UpdateCompanyName.do")
	public ModelAndView UpdateCompanyName(HttpServletRequest request){
		
		System.out.println("success");
		int id=(int) request.getSession().getAttribute("companyId");
		System.out.println(id);
		Company company=new Company();
		company.setId(id);
		//获取表单公司名
		String name=request.getParameter("name");
		System.out.println(name);
		//获取原公司名
		Company fomer_com=companyService.selectCompanyById(id);
		String former_name=fomer_com.getName();
		System.out.println(former_name);
		System.out.println(former_name.length());
		String info="";
		
		
		
		if(name!=null){
			//判断公司名长度
			if(name.length()<4||name.length()>12){
				info="公司名称必须在4到12个字符！";
			}
			else{
				//检查公司名是否存在
				Company flag=companyService.checkCompanyNameExist(name);
				if(flag!=null){
					info="该公司名已存在，请重新输入！";
				}
				else{
					companyService.updateCompanyNameById(id,name);
					info="提交成功";
				}
				System.out.println(flag);
			}
			
		}
		
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("info",info);
		modelAndView.addObject("name",name);
		modelAndView.addObject("former_name",former_name);
		modelAndView.setViewName("creatCorporation");
		return modelAndView;
	}
	
	@RequestMapping(value="/showCompanyByCompetitionId.do")
	public ModelAndView showCompanyByCompetitionId(HttpServletRequest request){
		int id=Integer.valueOf(request.getParameter("id"));
		System.out.println("竞赛id:"+id);
		List<Company> list=companyService.showCompanyByCompetitionId(id);
		Competition competition=competitionService.findCompetitionById(id);
		System.out.println(list);
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("competition",competition);
		modelAndView.addObject("companyList",list);
		modelAndView.setViewName("teacher_competition_content");	
		return modelAndView;
	}
	
	@RequestMapping(value="/strategyInfo.do")
	public ModelAndView strategyInfo(HttpServletRequest request){
		
		//查询title
		List<String> titleList=companyService.countStrategyTitle();
		//根据title遍历存入map
		Map<String,List<StrategyInfo>> result=new HashMap<String,List<StrategyInfo>>();
		for(int i = 0;i < titleList.size(); i ++){
            System.out.println(titleList.get(i));
            result.put(titleList.get(i), companyService.showStrategyInfoBytitle(titleList.get(i)));
        }
		
		//查询公司id和季度
		int company_id=(int) request.getSession().getAttribute("companyId");
		int quarter=1;
		System.out.println(company_id);
		
		CompanyStrategy companyStrategy=companyService.selectCompanyStrategy(company_id,quarter);	
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("result",result);
		
		//若有公司该季度记录，则添加该对象
		if(companyStrategy!=null){
			modelAndView.addObject("companyStrategy",companyStrategy);
		}
		
		modelAndView.setViewName("strategy");	
		return modelAndView;
	}
	
	
	@RequestMapping(value="/companyRuleInfo.do")
	public ModelAndView companyRuleInfo(HttpServletRequest request){
		
		//得到title数组
		List<String> titleList=companyService.countCompanyRuleTitle();
		
		System.out.println(titleList);
		
		Map<String,List<StrategyInfo>> result=new HashMap<String,List<StrategyInfo>>();
		
		for(int i = 0;i < titleList.size(); i ++){
            System.out.println(titleList.get(i));
            result.put(titleList.get(i), companyService.showCompanyRuleInfoBytitle(titleList.get(i)));
        }
		
		ModelAndView modelAndView =  new ModelAndView();

		modelAndView.addObject("result",result);
		modelAndView.setViewName("company_rule");	
		return modelAndView;
	}
	
	
	@RequestMapping(value="/personalGoalInfo.do")
	public ModelAndView personalGoalInfo(HttpServletRequest request){
		
		//得到title数组
		List<String> titleList=companyService.countPersonalGoalTitle();

		
		Map<String,List<StrategyInfo>> result=new HashMap<String,List<StrategyInfo>>();
		
		for(int i = 0;i < titleList.size(); i ++){
            System.out.println(titleList.get(i));
            result.put(titleList.get(i), companyService.showPersonalGoalInfoBytitle(titleList.get(i)));
        }
		
		ModelAndView modelAndView =  new ModelAndView();

		modelAndView.addObject("result",result);
		modelAndView.setViewName("personal_goal");	
		return modelAndView;
	}
	
	@RequestMapping(value="/showMarketInfo.do")
	public ModelAndView showMarketInfo(HttpServletRequest request){
		
		List<MarketInfo> marketInfoList=companyService.showMarketInfo();
		
		ModelAndView modelAndView =  new ModelAndView();

		modelAndView.addObject("marketInfoList",marketInfoList);
		modelAndView.setViewName("physicalStore");	
		return modelAndView;
	}
	@RequestMapping(value="/showMarketWebInfo.do")
	public ModelAndView showMarketWebInfo(HttpServletRequest request){
		
		List<MarketInfo> marketInfoList=companyService.showMarketInfo();
		
		ModelAndView modelAndView =  new ModelAndView();

		modelAndView.addObject("marketInfoList",marketInfoList);
		modelAndView.setViewName("onlineStore");	
		return modelAndView;
	}
	
	@RequestMapping(value="/showCapacityInfo.do")
	public ModelAndView showCapacityInfo(HttpServletRequest request){
		
		List<CapacityInfo> capacityInfoList=companyService.showCapacityInfo();
		
		ModelAndView modelAndView =  new ModelAndView();

		modelAndView.addObject("capacityInfoList",capacityInfoList);
		modelAndView.setViewName("constantProduce");	
		return modelAndView;
	}
	
	@RequestMapping(value="/showAllMemberByComapnyId.do")
	public ModelAndView showAllMemberByComapnyId(HttpServletRequest request,Company company){
		int id=(int) request.getSession().getAttribute("companyId");
		List<Member> memberList=memberService.showAllMemberByComapnyId(id);
		
		List<Duty> dutyList=companyService.showAllPosition();
		
		ModelAndView modelAndView =  new ModelAndView();

		modelAndView.addObject("memberList",memberList);
		modelAndView.addObject("dutyList",dutyList);
		modelAndView.setViewName("duty");	
		return modelAndView;
		}
	
	
	@RequestMapping("/queryCompanySubmit.do")
	public ModelAndView queryCompanySubmit(HttpServletRequest request,TeacherQueryVo teacherQueryVo) throws Exception{
		ModelAndView modelAndView =  new ModelAndView();
		Company company= teacherQueryVo.getCompany();
		Teacher record=(Teacher) request.getSession().getAttribute("teacher");
		teacherQueryVo.setTeacher(record);
		System.out.println("原设教师id："+record.getId());
		Competition competition=teacherQueryVo.getCompetition();
		List<TeacherQueryVo> companyList = companyService.findCompanyList(teacherQueryVo);	
		//通过形参中的model将model数据传到页面,相当于上面addObjeect
		modelAndView.addObject("company", company);
		System.out.println(company);
		modelAndView.addObject("competition", competition);
		modelAndView.addObject("companyList", companyList);
		modelAndView.setViewName("jsp/teacherQuery/queryCompany");
		return modelAndView;
		
	}
	
	@RequestMapping("/queryCompanyByPage.do")
	public ModelAndView queryCompanyByPage(HttpServletRequest request,TeacherQueryVo teacherQueryVo) throws Exception{
		String pageNow=request.getParameter("pageNow");
		Page page = null;
		List<TeacherQueryVo> companyList =  new ArrayList<TeacherQueryVo>();
		
	    Teacher record=(Teacher) request.getSession().getAttribute("teacher");
		teacherQueryVo.setTeacher(record);
		
		int totalCount = (int) companyService.getCompanyCount(teacherQueryVo); 
	    Company company= teacherQueryVo.getCompany();
	    if (pageNow != null) {  
	        page = new Page(totalCount, Integer.parseInt(pageNow));
	        
	    } else {  
	        page = new Page(totalCount, 1); 
	        }  
	    teacherQueryVo.setStartPos(page.getStartPos());
	    teacherQueryVo.setPageSize(page.getPageSize());
	    companyList = companyService.selectCompanyByPage(teacherQueryVo);
	    
	    ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("page",page);
	    modelAndView.addObject("companyList", companyList);
	    modelAndView.addObject("company", company);
		modelAndView.setViewName("jsp/teacherQuery/queryCompany");
		System.out.println(page.getPageSize());
		System.out.println("公司："+companyList);
		return modelAndView;
	}
	
	@RequestMapping("/updateCompanyStrategy.do")
	public ModelAndView updateCompanyStrategy(HttpServletRequest request,CompanyStrategy companyStrategy) throws Exception {
		System.out.println("success");
		
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=1;
		
		
		System.out.println(companyStrategy.getMainPro());
		
		//获取选中项数组
		String[] content=request.getParameterValues("ability");
		System.out.println(content);
		//数组转换成字符串存入数据库
		String strategyId="";
		for(String str:content){
			strategyId+=str+",";
		}
		System.out.println(strategyId);
		
		//由于与数据库字段名不匹配，需要手动注入
		companyStrategy.setCompanyId(company_id);
		companyStrategy.setStrategyId(strategyId);
		companyStrategy.setQuarter(quarter);
		
		//判断
		CompanyStrategy com=companyService.selectCompanyStrategy(company_id,quarter);
		if(com!=null)
		{
			//数据库更新操作
			companyService.updateCompanyStrategy(companyStrategy);
		}
		else{
			//数据库添加操作
			companyService.insertCompanyStrategy(companyStrategy);
		}
		//返回jsp
		ModelAndView modelAndView=strategyInfo(request);
		modelAndView.setViewName("strategy");	
		return modelAndView;
		
	}
	
	@RequestMapping(value="/showProductDetail.do")
	@ResponseBody
	public ModelAndView showProductDetail(HttpServletRequest request) throws Exception{
		List<ProductInfo> bibei=companyService.showProductDetailByTitle("必备");
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("bibei",bibei);
		
		List<ProductInfo> yunying=companyService.showProductDetailByTitle("运营商");
		modelAndView.addObject("yunying",yunying);
		
		List<ProductInfo> lanya=companyService.showProductDetailByTitle("蓝牙");
		modelAndView.addObject("lanya",lanya);
		
		List<ProductInfo> pingmu=companyService.showProductDetailByTitle("屏幕尺寸");
		modelAndView.addObject("pingmu",pingmu);
		
		List<ProductInfo> chukong=companyService.showProductDetailByTitle("触控方式");
		modelAndView.addObject("chukong",chukong);
		
		List<ProductInfo> cpu=companyService.showProductDetailByTitle("处理器速度");
		modelAndView.addObject("cpu",cpu);
		
		List<ProductInfo> jishen=companyService.showProductDetailByTitle("机身容量");
		modelAndView.addObject("jishen",jishen);
		
		List<ProductInfo> paizhao=companyService.showProductDetailByTitle("拍照像素");
		modelAndView.addObject("paizhao",paizhao);
		
		List<ProductInfo> texing=companyService.showProductDetailByTitle("机身特性");
		modelAndView.addObject("texing",texing);
		
		List<ProductInfo> dianchi=companyService.showProductDetailByTitle("电池容量");
		modelAndView.addObject("dianchi",dianchi);
		
		List<ProductInfo> qita=companyService.showProductDetailByTitle("其他功能");
		modelAndView.addObject("qita",qita);
		
		
		modelAndView.setViewName("brandDs");
		return modelAndView;
	}
	
	@RequestMapping(value="/showProductDetail2.do")
	public ModelAndView showProductDetail2(HttpServletRequest request) throws Exception {
		//查询title
				List<String> titleList=companyService.countProductInfoTitle();
				//根据title遍历存入map
				Map<String,List<ProductInfo>> result=new LinkedHashMap<String,List<ProductInfo>>();
				for(int i = 0;i < titleList.size(); i ++){
		            System.out.println(titleList.get(i));
		            result.put(titleList.get(i), companyService.showProductInfoByTitle(titleList.get(i)));
		        }
				ModelAndView modelAndView =  new ModelAndView();
				modelAndView.addObject("result",result);
				modelAndView.setViewName("brand_ds");	
				return modelAndView;
	}
	
	@SuppressWarnings("null")
	@RequestMapping("/operateProduct.do")
	public ModelAndView operateProduct(HttpServletRequest request) throws Exception {
		// 获取操作的方法
		System.out.println("dkjda");
		String id=request.getParameter("id");
		System.out.println(id);
		String method = request.getParameter("method");
		System.out.println(method);
		// 初始化一个ModelAndView
		ModelAndView modelAndView =showProductDetail(request);
		
		
		if (method.equals("query")) {
			CompanyProduct companyProduct=companyService.selectProductByProductId(Integer.parseInt(id));
			System.out.println(companyProduct);
			modelAndView.addObject("companyProduct", companyProduct);
			modelAndView.setViewName("brandDs");
		}
		/*else if (method.equals("delete")) {
				String name = request.getParameter("name");
				proService.deleteProductByName(name);
				modelAndView.setViewName("info-manage-stu");
			}
		} else {
			modelAndView.setViewName("info-manage-stu");
		}*/
		
		return modelAndView;
	}


	@RequestMapping(value = "/CompanyProduct.do")
	public ModelAndView CompanyProduct(HttpServletRequest request) {
		
		System.out.println("success");
		int companyId=(int) request.getSession().getAttribute("companyId");
		List<CompanyProduct> companyProducts = companyService.selectProductByCompanyId(companyId);
		System.out.println(companyProducts);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("companyProducts", companyProducts);
		modelAndView.setViewName("design");
		return modelAndView;
	}

	@RequestMapping(value="/UpdateCompanyProduct.do")
	public ModelAndView UpdateCompanyProduct(HttpServletRequest request,CompanyProduct companyProduct){
		
		System.out.println("success");
		int id=(int) request.getSession().getAttribute("companyId");
		System.out.println(id);
		
		int quarter=1;
		companyProduct.setQuarter(quarter);
		
		System.out.println(companyProduct.getCost());
		/*int cost=100;
		companyProduct.setCost(cost);*/
		
		companyProduct.setCompanyId(id);
		
		System.out.println(companyProduct.getName());
		
		/*String bibei=request.getParameter("bibei");
		System.out.println(bibei);
		
		String yunying=request.getParameter("yunying");
		System.out.println(yunying);*/
		
		System.out.println(companyProduct.getYunying());
		
		companyService.insertCompanyProduct(companyProduct);
		
		ModelAndView modelAndView =  new ModelAndView();
		
		return modelAndView;
	}

	
}
