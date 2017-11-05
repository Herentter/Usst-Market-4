package cn.usst.market.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.SallSituationVo;
import cn.usst.market.service.SearchService;

@Controller
public class InforController {

	@Autowired
	private SearchService SS;
	
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

}
