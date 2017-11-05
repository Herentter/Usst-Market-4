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

import cn.usst.market.annotation.MethodLog;
import cn.usst.market.po.BalanceSheet;
import cn.usst.market.po.CashFlow;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyQuarterTime;
import cn.usst.market.po.CompanyStock;
import cn.usst.market.po.Competition;
import cn.usst.market.po.DemandInfo;
import cn.usst.market.po.IncomeStatement;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.MediaInfo;
import cn.usst.market.po.Page;
import cn.usst.market.po.PriceInfo;
import cn.usst.market.po.TeacherQueryVo;
import cn.usst.market.po.TeacherReference;
import cn.usst.market.po.UsageInfo;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.CompetitionResultService;
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
	
	@Autowired
	private CompetitionResultService competitionResultService;
	
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
		record.setIsLock(0);
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
				//在竞赛表中插入 提交的竞赛信息
				competitionService.insert(record);		
				errorInfo="竞赛创建成功";
			}
		}
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("errorInfo", errorInfo);
		modelAndView.setViewName("success");	
		return modelAndView;
	}
	
	
	//审核竞赛
	@RequestMapping("/checkCompetition.do")
	public ModelAndView checkCompetition(HttpServletRequest request,Integer competitionId){
		System.out.println("######竞赛id:#####"+competitionId);
		Competition record=competitionService.findCompetitionById(competitionId);
		
		//生成竞赛许可证号
		StringRandom sr=new StringRandom();
		String competitionLicense=sr.getStringRandom(12);
		record.setLicense(competitionLicense);
		
		record.setStatus("已通过");
		//更新竞赛许可证号 和  竞赛状态 
		
		competitionService.updateCompetitionInfo(record);

		//获取团队数量
		int team=record.getTeam();
		//团队中的人数
		int peopleNumber=record.getMember();
		//季度数
		int quarterNumber=record.getQuarter();
		
		//根据竞赛信息 创建团队
		for(int i = 1;i<=team;i++){
			Company com=new Company();
			com.setName("公司"+i);
			com.setSerialNumber(i);			
			//生成团队许可证
			StringRandom sr2=new StringRandom();	
			String license=sr2.getStringRandom(12);
			
			com.setLicense(license);
			com.setCompetitionId(competitionId);
			com.setPeopleNumber(peopleNumber);
			companyService.insert(com);
			//获取刚刚创建公司的 id
			int companyId=com.getId();
			
			CompanyStock cs=new CompanyStock();
			cs.setCompanyId(companyId);
			cs.setOwner("经营团队");
			cs.setQuarter(1);
			cs.setStockType("普通股");
			cs.setStockNumber(10000);
			cs.setStockPrice(200);
			cs.setTotalPrice(2000000);			
			companyService.insertCompanyStock(cs);
				
			//插入 到表 company_quarter_time
			CompanyQuarterTime companyQuarterTime=new CompanyQuarterTime();
			companyQuarterTime.setCompetitionId(competitionId);
			companyQuarterTime.setCompanyId(companyId);
			companyQuarterTime.setQuarter(1);
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			String startTime=df.format(new Date());
			companyQuarterTime.setStartTime(startTime);
			companyQuarterTime.setIsSubmit(0);
			competitionResultService.insertCompanyQuarterTime(companyQuarterTime);

			
			//获取公司id
			
			System.out.println("####公司ID####:"+companyId);
			//根据竞赛信息 在 财务表中插入数据
			for (int j = 1; j <= quarterNumber; j++) {
				
				CashFlow cf=new CashFlow();
				cf.setCompanyId(companyId);
				cf.setQuarter(j);
				cf.setXiaoshouGet((float) 0);
				cf.setLixiGet((float) 0);
				cf.setJishuGet((float) 0);
				cf.setQitaGet((float) 0);
				cf.setFankuanPay((float) 0);
				cf.setShengchanPay((float) 0);
				cf.setYanfaPay((float) 0);
				cf.setGuanggaoPay((float) 0);
				cf.setSalerPay((float) 0);
				cf.setSalescenterPay((float) 0);
				cf.setSalescenterWebPay((float) 0);
				cf.setDiaoyanPay((float) 0);
				cf.setHuoyunPay((float) 0);
				cf.setKucunPay((float) 0);
				cf.setNetmarketPay((float) 0);
				cf.setTaxPay((float) 0);
				cf.setLixiPay((float) 0);
				cf.setJishuPay((float) 0);
				cf.setQitaPay((float) 0);
				cf.setGongchangPay((float) 0);
				cf.setDaikuanNormalGet((float) 0);
				cf.setDaikuanEmergyGet((float) 0);
				cf.setCunkuanRegularGet((float) 0);
				cf.setDaikuanNormalPay((float) 0);
				cf.setDaikuanEmergyPay((float) 0);
				cf.setCunkuanRegularPay((float) 0);
				cf.setYuE((float) 0);
				
				
				BalanceSheet bs=new BalanceSheet();
				bs.setCompanyId(companyId);
				bs.setQuarter(j);
				bs.setHuobi((float) 0);
				bs.setCunkuan((float) 0);
				bs.setLixiCollection((float) 0);
				bs.setCunhuo((float) 0);
				bs.setZichan((float) 0);
				bs.setDaikuanEmergency((float) 0);
				bs.setLixiPay((float) 0);
				bs.setDaikuanNormal((float) 0);
				bs.setGuben((float) 2000000);
				bs.setLiucun((float) 0);
				

				IncomeStatement is=new IncomeStatement();
				is.setCompanyId(companyId);
				is.setQuarter(j);
				is.setYingyeIncome((float) 0);
				is.setLixiIncome((float) 0);
				is.setYingyeCost((float) 0);
				is.setFankuan((float)0);
				is.setYanfa((float)0);
				is.setGuanggao((float)0);
				is.setSalerCost((float)0);
				is.setSalescenterCost((float)0);
				is.setSalescenterWebCost((float)0);
				is.setBaogao((float)0);
				is.setHuoyun((float)0);
				is.setKucun((float)0);
				is.setExcessCapacity((float)0);
				is.setZhejiu((float)0);
				is.setNetmarketCost((float)0);
				is.setLixiCost((float)0);
				is.setTechIncome((float)0);
				is.setQitaIncome((float)0);
				is.setTechCost((float)0);
				is.setQitaCost((float)0);
				is.setTaxCost((float)0);
				
				
				companyService.insertCashFlowFirst(cf);
				companyService.insertBalanceSheetFirst(bs);
				companyService.insertIncomeStatementFirst(is);
			}
		}
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.setViewName("check");	
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
	
	@MethodLog(description="查看客户需求")
	@RequestMapping(value="/showDemandInfo.do")
	public ModelAndView showDemandInfo(HttpServletRequest request) throws Exception{
		List<DemandInfo> list=competitionService.showDemandInfo();
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("demandInfoList", list);
		modelAndView.setViewName("customRequired");	
		return modelAndView;
	}
	
	@RequestMapping(value="showDemandInfojson.do ")
	public @ResponseBody List<DemandInfo> showDemandInfojson(HttpServletRequest request){
		List<DemandInfo> demandInfo=competitionService.showDemandInfo();
		return demandInfo;
		}

	@RequestMapping(value="showMarketInfojson.do")
		public @ResponseBody List<MarketInfo> showMarketInfojson(HttpServletRequest request){
			List<MarketInfo> list=staticInfoService.showMarketInfo();
			return list;
		}
	
	@RequestMapping(value="showUsageInfojson.do")
		public @ResponseBody List<UsageInfo> showUsageInfojson(HttpServletRequest request){
			List<UsageInfo> usageInfo=staticInfoService.showUsageInfo();
			return usageInfo;
		}
	
	@RequestMapping(value="showPriceInfojson.do")
		public @ResponseBody List<PriceInfo> showPriceInfojson(HttpServletRequest request){
			List<PriceInfo> list=staticInfoService.showPriceInfo();
			return list;
		}
	@MethodLog(description="查看产品用途")
	@RequestMapping(value="/showUsageInfo.do")
	public ModelAndView showUsageInfo(HttpServletRequest request) throws Exception{
		List<UsageInfo> list=staticInfoService.showUsageInfo();
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("productUseList", list);
		modelAndView.setViewName("productUse");	
		return modelAndView;
	}
	@MethodLog(description="查看用户愿意支付的价格")
	@RequestMapping(value="/showPriceInfo.do")
	public ModelAndView showPriceInfo(HttpServletRequest request) throws Exception{
		List<PriceInfo> list=staticInfoService.showPriceInfo();
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("PriceInfoList", list);
		modelAndView.setViewName("marketPrice");	
		return modelAndView;
	}
	@MethodLog(description="查看市场规模")
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
	
	@MethodLog(description="查看媒体偏好")
	@RequestMapping(value="/showMediaInfo.do")
	public ModelAndView showMediaInfo(HttpServletRequest request) throws Exception{
		List<MediaInfo> list=staticInfoService.showMediaInfo();
		ModelAndView modelAndView =  new ModelAndView();
	    modelAndView.addObject("MediaInfoList", list);
		modelAndView.setViewName("mediaInfo");	
		return modelAndView;
	}
	

	@RequestMapping(value="showMediaInfojson.do ")
	public @ResponseBody List<MediaInfo> showMediaInfojson(HttpServletRequest request){
		List<MediaInfo> mediaInfo=staticInfoService.showMediaInfo();
		return mediaInfo;
		}


	
	
	
}
