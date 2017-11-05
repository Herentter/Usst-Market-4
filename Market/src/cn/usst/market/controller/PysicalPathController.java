package cn.usst.market.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.PysicalEmploeePo;
import cn.usst.market.po.PysicalEmploeeVo;
import cn.usst.market.po.SallSituationVo;
import cn.usst.market.service.PysicalPathService;
import cn.usst.market.service.impl.SearchServiceImpl;

@Controller
public class PysicalPathController {
	
	@Autowired
	private PysicalPathService PPS;
	
	@Autowired
	private SearchServiceImpl SSI;
	
	@RequestMapping("/PysicalPath.do")
	public ModelAndView StartupPhysicalEmploee(HttpServletRequest request) throws Exception{
		
		
		//获取公司ID,季度号
		int company_id=(int)request.getSession().getAttribute("companyId");
		//int quater = (int) request.getAttribute("quater");
		int quater = 4;
		
		int[] inn = PPS.HRcost(company_id,quater);
		for(int count:inn)
			System.out.println("HRcost : "+count);
		inn = PPS.salary(company_id,quater);
		for(int count:inn)
			System.out.println("salary : "+count);
		
		//根据公司ID查询各店人员配比
		List<PysicalEmploeePo> PEPlist = PPS.getPopulationbyCompanyid(company_id,quater);
		List<PysicalEmploeePo> PEPchlist = PPS.getPopuChangesbyCompanyid(company_id,quater);
		for(PysicalEmploeePo m:PEPchlist){
			System.out.println("saller change : "+m.getSaller());
			System.out.println("aftersale change : "+m.getAftersale());
		}
		
		//输出查询结果
		int add = 0;//若这个变量被置1，则说明接下来需要创建新表而非更新旧表
		if(quater != PEPlist.get(0).getQuater())
			add = 1;
		ModelAndView modelAndView = new ModelAndView();
		int len = 1;
		modelAndView.addObject("salesSalaryList",PEPlist);
		modelAndView.addObject("len",len);
		modelAndView.addObject("quater",quater);
		modelAndView.addObject("add",add);
		modelAndView.setViewName("physicalemploeehiring");
		
		return modelAndView;
	}
	
	@RequestMapping("/pysicalsalersavedata.do")
	public ModelAndView StoreAndResponsePhysicalEmploee(HttpServletRequest request) throws Exception{
		System.out.println("Called");
		//获取公司ID
		int company_id=(int)request.getSession().getAttribute("companyId");
		String quaterS[] = request.getParameterValues("quater");
		String addS[] = request.getParameterValues("add");
		System.out.println("quaterS : "+quaterS);
		int quater = Integer.parseInt(quaterS[0]);
		int add = Integer.parseInt(addS[0]);
		System.out.println("company_id : "+company_id);
		System.out.println("quater : "+quater);
		//buffer初始化
		PysicalEmploeeVo tr[] = new PysicalEmploeeVo[4];
		for(int i=0;i<tr.length;i++)
			tr[i] = new PysicalEmploeeVo();
		
		//获取各项基本数据
		String saller[] = request.getParameterValues("saller");
		String aftersale[] = request.getParameterValues("aftersale");
		
		//格式化数据
		System.out.println("length of aftersale : "+aftersale.length);
		for(int i=0;i<tr.length;i++){
			PysicalEmploeePo PEPm = new PysicalEmploeePo();
			System.out.println("--------------------------");
			System.out.println("round "+i);
			PEPm.setAftersale(Integer.parseInt(aftersale[i]));
			System.out.println("PEPm.getAftersale() : "+PEPm.getAftersale());
			PEPm.setSaller(Integer.parseInt(saller[i]));
			System.out.println("PEPm.getSaller() : "+PEPm.getSaller());
			PEPm.setCompanyid(company_id);
			System.out.println("company_id : "+PEPm.getCompanyid());
			PEPm.setQuater(quater);
			System.out.println("quater : "+PEPm.getQuater());
			PEPm.setLocation(i+1);
			System.out.println("getLocation : "+PEPm.getLocation());
			tr[i].setPysicalEmploee(PEPm);
			System.out.println("reset done");
			System.out.println("--------------------------");
		}
		
		for(PysicalEmploeeVo trm:tr){
			System.out.println("trm.getLocation() : "+trm.getPysicalEmploee().getLocation());
			if(add == 0)
				PPS.updateCompanyEmploeeInfo(trm);
			else
				PPS.insertCompanyEmploeeInfo(trm);
		}
		
		//返回结果
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("in");
		modelAndView = StartupPhysicalEmploee(request);
		System.out.println("out");
		return modelAndView;
	}

}
