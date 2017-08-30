package cn.usst.market.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.Company;
import cn.usst.market.po.Competition;
import cn.usst.market.po.DemandInfo;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.Page;
import cn.usst.market.po.PriceInfo;
import cn.usst.market.po.TeacherQueryVo;
import cn.usst.market.po.TeacherReference;
import cn.usst.market.po.UsageInfo;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.CompetitionService;
import cn.usst.market.service.StaticInfoService;
import marketUtil.StringRandom;
@Controller
public class CompetitionController {
	@Autowired
	private CompetitionService competitionService;
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private StaticInfoService staticInfoService;
	
	@RequestMapping("/designCompetition.do")
	public ModelAndView designCompetition(HttpServletRequest request,Competition record){
		
		String startTime=request.getParameter("start_time");
		String endTime=request.getParameter("end_time");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date parse1;
		Date parse2;
		try {
			parse1 = sdf.parse(startTime);
			parse2 = sdf.parse(endTime);
			record.setStartTime(parse1);
			record.setEndTime(parse2);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		record.setCurrentQuarter(1);
		record.setStatus("待审核");
		//检验竞赛名称是否合法
		String competitionName=record.getName();
		String errorInfo="";
		
		if(competitionName.length()<6){
			errorInfo="竞赛名称长度过短";
		}else if(competitionName.length()>20){
			errorInfo="竞赛名称长度过长";
		}else{
			Competition flag=null;
			flag=competitionService.checkCompetitionExist(competitionName);
			if(flag!=null){
				errorInfo="竞赛已存在";
			}else{
				competitionService.insert(record);

				System.out.println("竞赛id:"+record.getId());
				
				//根据竞赛的团队数创建公司
				int competitionId=record.getId();
				/*int teacherId=record.getTeacherId();*/
				int team=record.getTeam();
				int peopleNumber=record.getMember();
				for(int i = 1;i<=team;i++){
					Company com=new Company();
					com.setName("公司"+i);
					com.setSerialNumber(i);
					StringRandom sr=new StringRandom();
					String license=sr.getStringRandom(12);
					com.setLicense(license);
					com.setCompetitionId(competitionId);
					com.setPeopleNumber(peopleNumber);
					companyService.insert(com);
				}
				errorInfo="竞赛创建成功";
			}
		}
		
		
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("errorInfo", errorInfo);
		modelAndView.setViewName("success");	
		return modelAndView;
	}
	
	@RequestMapping(value="/showCompetitionByTeacher.do",method=RequestMethod.POST)
	@ResponseBody
	public List<Competition> showCompetitionByTeacher(HttpServletRequest request) throws Exception{
		int id=Integer.valueOf(request.getParameter("teacherId"));
		List<Competition> list=competitionService.findCompetitionByTeacherId(id);
		System.out.println("教师id:"+id);
		System.out.println(list);
		return list;
	}
	@RequestMapping("/queryById.do")
	public String findById(){
		Competition competition=competitionService.findCompetitionById(1);
		System.out.println(competition);
		return "success";
		
	}
	
	@RequestMapping(value="/showCompanyNameById.do",method=RequestMethod.POST)
	@ResponseBody
	public Company showCompanyName(HttpServletRequest request) throws Exception{
		//int id=Integer.valueOf(request.getParameter("companyId"));
		Company record=new Company();
		int id=(int) request.getSession().getAttribute("companyId");
		record.setId(id);
		record=companyService.findCompanyById(record);
		System.out.println(record);
		return record;
	}
	
	@RequestMapping(value="/showDemandInfo.do")
	public ModelAndView showDemandInfo(HttpServletRequest request) throws Exception{
		List<DemandInfo> list=competitionService.showDemandInfo();
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("demandInfoList", list);
		modelAndView.setViewName("customRequired");	
		return modelAndView;
	}
	
	@RequestMapping(value="/showUsageInfo.do")
	public ModelAndView showUsageInfo(HttpServletRequest request) throws Exception{
		System.out.println("123123123123");
		List<UsageInfo> list=staticInfoService.showUsageInfo();
		System.out.println("查到的："+list);
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("productUseList", list);
		modelAndView.setViewName("productUse");	
		return modelAndView;
	}
	
	@RequestMapping(value="/showPriceInfo.do")
	public ModelAndView showPriceInfo(HttpServletRequest request) throws Exception{
		List<PriceInfo> list=staticInfoService.showPriceInfo();
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("PriceInfoList", list);
		modelAndView.setViewName("marketPrice");	
		return modelAndView;
	}
	
	@RequestMapping(value="/showMarketInfo2.do")
	public ModelAndView showMarketInfo2(HttpServletRequest request) throws Exception{
		List<MarketInfo> list=staticInfoService.showMarketInfo();
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("MarketInfoList", list);
		modelAndView.setViewName("marketScale");	
		return modelAndView;
	}
	
	
	@RequestMapping("/queryCompetitionSubmit.do")
	public String queryCompetitionSubmit(Model model,TeacherQueryVo teacherQueryVo) throws Exception{
		
		Competition competition= teacherQueryVo.getCompetition();
		List<Competition> competitionList = competitionService.findCompetitionList(teacherQueryVo);
		//通过形参中的model将model数据传到页面,相当于上面addObjeect
		model.addAttribute("competition", competition);
		model.addAttribute("competitionList", competitionList);
		
		//返回jsp页面，相当于modelAndView.setViewName
		return "jsp/teacherQuery/queryCompetition";
		
	}
	
	@RequestMapping("/teacherReferenceBook.do")
	public String findReferenceBookList(Model model) throws Exception{

		List<TeacherReference> list=competitionService.findTeacherReference();
		model.addAttribute("teacherReferenceList", list);
		return "jsp/teacherReferenceBook/teacherReference";
		
	}
	
	@RequestMapping("/selectCompetitionByPage.do")
	public ModelAndView selectCompetitionByPage(HttpServletRequest request,TeacherQueryVo teacherQueryVo){
		
		String pageNow=request.getParameter("pageNow");
		Page page = null;
		  
		List<Competition> competitionList =  new ArrayList<Competition>();
	    
	    int totalCount = (int) competitionService.getCompetitionCount(teacherQueryVo);
	    System.out.println(totalCount);
	    
	    Competition competition= teacherQueryVo.getCompetition();
	    
	    
	    if (pageNow != null) {  
	        page = new Page(totalCount, Integer.parseInt(pageNow));
	        teacherQueryVo.setStartPos(page.getStartPos());
	        teacherQueryVo.setPageSize(page.getPageSize());
	        competitionList = competitionService.selectCompetitionByPage(teacherQueryVo);
	    } else {  
	        page = new Page(totalCount, 1); 
	        teacherQueryVo.setStartPos(page.getStartPos());
	        teacherQueryVo.setPageSize(page.getPageSize());
	        competitionList = competitionService.selectCompetitionByPage(teacherQueryVo);
	    }  
	    ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("page",page);
	    modelAndView.addObject("competitionList", competitionList);
	    modelAndView.addObject("competition", competition);
		modelAndView.setViewName("jsp/teacherQuery/queryCompetition");	
		return modelAndView;
		
	}


	
	
	
}
