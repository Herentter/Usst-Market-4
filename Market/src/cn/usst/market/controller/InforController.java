package cn.usst.market.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.GlobalPathNeedsVo;
import cn.usst.market.po.SaleIncomVo;
import cn.usst.market.po.SallSituationVo;
import cn.usst.market.po.StoreInforVo;
import cn.usst.market.service.PysicalPathService;
import cn.usst.market.service.SearchService;

@Controller
public class InforController {

	@Autowired
	private SearchService SS;
	
	@Autowired
	private PysicalPathService PPS;
	
	/**
	 * 各产品销量统计调用这个controller
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/SalePathInfor.do")
	private ModelAndView SalePathInfor(HttpServletRequest request) throws Exception{
	
		//获取公司ID
		int company_id=(int)request.getSession().getAttribute("companyId");
		//int quater = (int) request.getAttribute("quater");
		int quater = 2;
				
		List<SallSituationVo> ListSSV = SS.selectSaleSituationbyCompanyID(company_id,quater);
		
		System.out.println("ListSSV");
		System.out.println("ListSSV.get(0).getSaleIncom() : "+ListSSV.get(0).getSaleIncom());
		System.out.println("ListSSV.get(0).getPMS().getNeed() : "+ListSSV.get(0).getPMS().getNeed());
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("listssv",ListSSV);
		modelAndView.setViewName("SalePath");
		return modelAndView;
	}
	
	/**
	 * 渠道盈利能力调用此controller
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/SaleAbilityInfor.do")
	private ModelAndView SaleAbilityInfor(HttpServletRequest request) throws Exception{
		//获取公司ID
		int company_id=(int)request.getSession().getAttribute("companyId");
		//int quater = (int) request.getAttribute("quater");
		int quater = 2;
		
		List<SaleIncomVo> ListSSV = SS.selectPathAbilitybyCompanyID(company_id, quater);
		SaleIncomVo vo = new SaleIncomVo();
		for(SaleIncomVo v:ListSSV){
			vo.setSaleIncomSum(vo.getSaleIncomSum()+v.getSaleIncomSum());
			vo.setYoujiSum(vo.getYoujiSum()+v.getYoujiSum());
			vo.setSaleCostSum(vo.getSaleCostSum()+v.getSaleCostSum());
		}
		
		int[] physalary = PPS.salary(company_id, quater);
		int salary_sum = 0;
		for(int i = 0;i<4;i++)
			salary_sum += physalary[i];
		
		int fuzzyincom = vo.getSaleIncomSum()-vo.getSaleCostSum();
		int income = fuzzyincom - salary_sum;
		int sa = vo.getSaleIncomSum();
		double rate = income*100/sa;
		System.out.println("income : "+income);
		System.out.println("vo.getSaleIncomSum() : "+vo.getSaleIncomSum());
		System.out.println("rate : "+rate);
		String ra = rate+"%";
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("vo",vo);
		modelAndView.addObject("fuzzyincom",fuzzyincom);
		modelAndView.addObject("income",income);
		modelAndView.addObject("rate",ra);
		modelAndView.addObject("salary_sum",salary_sum);
		modelAndView.setViewName("SaleAbility");
		return modelAndView;
				
	}

	/**
	 * 各渠道需求量调用此controller
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/GlobalPathNeeds.do")
	private ModelAndView GlobalPathNeeds(HttpServletRequest request) throws Exception{
		//获取公司ID
		int company_id=(int)request.getSession().getAttribute("companyId");
		//int quater = (int) request.getAttribute("quater");
		int quater = 2;
		
		List<GlobalPathNeedsVo> ListGPNV = SS.selectGlobalPathSharebycompanyid(company_id,quater);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ListGPNV",ListGPNV);
		modelAndView.setViewName("GlobalPath");
		return modelAndView;
				
	}
	
	/**
	 * 各个参赛队开设分店情况
	 */
	@RequestMapping("/StoreInfor.do")
	private ModelAndView StoreInfor(HttpServletRequest request) throws Exception{
		//获取公司ID
		int company_id=(int)request.getSession().getAttribute("companyId");
		//int quater = (int) request.getAttribute("quater");
		int quater = 1;
		
		List<StoreInforVo> ListSIV = SS.selectStoreInforbycompanyid(company_id,quater);
		
		/**
		 * 1~4分别为印俄中新
		 */
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("ListSIV",ListSIV);
		modelAndView.setViewName("StoreInfor");
		return modelAndView;
				
	}

}
