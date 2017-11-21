package cn.usst.market.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.annotation.MethodLog;
import cn.usst.market.po.AdvertiseInfo;
import cn.usst.market.po.AllSalesSalaryVo;
import cn.usst.market.po.AllWorkersSalaryVo;
import cn.usst.market.po.AverageSalary;
import cn.usst.market.po.BalanceSheet;
import cn.usst.market.po.CapacityInfo;
import cn.usst.market.po.CashFlow;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyAdvertise;
import cn.usst.market.po.CompanyCapacity;
import cn.usst.market.po.CompanyDuty;
import cn.usst.market.po.CompanyInvestment;
import cn.usst.market.po.CompanyLoan;
import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.CompanyMedia;
import cn.usst.market.po.CompanyPersonGoal;
import cn.usst.market.po.CompanyProduct;
import cn.usst.market.po.CompanyProductVo;
import cn.usst.market.po.CompanyProductVo2;
import cn.usst.market.po.CompanyProductVo2List;
import cn.usst.market.po.CompanyReport;
import cn.usst.market.po.CompanyRule;
import cn.usst.market.po.CompanyStock;
import cn.usst.market.po.CompanyStrategy;
import cn.usst.market.po.Competition;
import cn.usst.market.po.CompetitivePowerVo;
import cn.usst.market.po.DemandForecast;
import cn.usst.market.po.Duty;
import cn.usst.market.po.FixedDeposit;
import cn.usst.market.po.HirePeople;
import cn.usst.market.po.HirePeopleList;
import cn.usst.market.po.HirePeopleOnline;
import cn.usst.market.po.HirePeopleOnlineList;
import cn.usst.market.po.HirePeopleOnlineVo;
import cn.usst.market.po.HirePeopleVo;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.IncomeStatement;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.MediaInfo;
import cn.usst.market.po.Member;
import cn.usst.market.po.OperationCapacity;
import cn.usst.market.po.Page;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.po.ProductMarketShare;
import cn.usst.market.po.ProductPrice;
import cn.usst.market.po.SalesSalary;
import cn.usst.market.po.StockLevelVo;
import cn.usst.market.po.StrategyInfo;
import cn.usst.market.po.Teacher;
import cn.usst.market.po.TeacherQueryVo;
import cn.usst.market.po.WorkersSalary;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.CompetitionService;
import cn.usst.market.service.MemberService;
import cn.usst.market.service.StaticInfoService;
import cn.usst.market.service.TeacherService;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private StaticInfoService staticInfoService;
	
	@Autowired
	private TeacherService teacherService;
	
	
	@MethodLog(description="修改公司名字")
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
		
		List<Member> memberList=null;
		TeacherQueryVo teacherQueryVo=null;
		List<TeacherQueryVo> companyResult=new ArrayList<TeacherQueryVo>();
		
		for (Company company : list) {
			teacherQueryVo=new TeacherQueryVo();
			int companyId=company.getId();
			memberList=memberService.showAllMemberByComapnyId(companyId);
			teacherQueryVo.setCompany(company);
			if(memberList!=null){
				
				teacherQueryVo.setMemberList(memberList);
			}
			companyResult.add(teacherQueryVo);
		}

		System.out.println(list);
		ModelAndView modelAndView =  new ModelAndView();
		
		modelAndView.addObject("competition",competition);
		modelAndView.addObject("companyResult",companyResult);
		modelAndView.addObject("companyList",list);
		modelAndView.setViewName("teacher_competition_content");	
		return modelAndView;
	}
	
	@MethodLog(description="查看目标策略操作")
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
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		System.out.println(company_id);
		
		CompanyStrategy companyStrategy=companyService.selectCompanyStrategy(company_id,quarter);	
		
		CompanyStrategy companyStrategyPro=companyService.selectCompanyStrategy(company_id,quarter-1);
		
		
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("result",result);
		modelAndView.addObject("quarter",quarter);
		
		//若有公司该季度记录，则添加该对象
		
		//先找上季度的策略值   
		if(companyStrategyPro!=null){
			modelAndView.addObject("companyStrategy",companyStrategyPro);
		}
		
		//再找本季度的策略值  若不为空 则 覆盖 上季度
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
		
		//若有公司该季度记录，则添加该对象
		int company_id=(int) request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		CompanyRule companyRule=companyService.selectCompanyRule(company_id, quarter);
		CompanyRule companyRulePro=companyService.selectCompanyRule(company_id, quarter-1);
		
		
		if(companyRulePro!=null){
			modelAndView.addObject("companyRule",companyRulePro);
		}
		
		if(companyRule!=null){
			modelAndView.addObject("companyRule",companyRule);
		}
		modelAndView.addObject("quarter",quarter);	
		modelAndView.setViewName("company_rule");		
		return modelAndView;
	}
	
	@MethodLog(description="修改团队规则")
	@RequestMapping("/updateCompanyRule.do")
	public ModelAndView updateCompanyRule(HttpServletRequest request,CompanyRule companyRule) throws Exception {
		System.out.println("团队规则控制台。。。");
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));		
		//获取选中项数组
		String[] content=request.getParameterValues("团队规则");
		//数组转换成字符串存入数据库
		String ruleId="";
		for(String str:content){
			ruleId+=str+",";
		}
		String str=request.getParameter("决策制定流程");
		ruleId+=str;
		
		System.out.println("团队规则："+ruleId);
		
		//由于与数据库字段名不匹配，需要手动注入
		companyRule.setCompanyId(company_id);
		companyRule.setRuleId(ruleId);
		companyRule.setQuarter(quarter);
		
		//判断
		CompanyRule com=companyService.selectCompanyRule(company_id,quarter);
		if(com!=null)
		{
			//数据库更新操作
			companyService.updateCompanyRule(companyRule);
			
		}
		else{
			//数据库添加操作
			companyService.insertCompanyRule(companyRule);
			
		}
		//返回jsp
		ModelAndView modelAndView=companyRuleInfo(request);
		modelAndView.setViewName("company_rule");	
		return modelAndView;
		
	}
	
	@MethodLog(description="查看团队目标操作")
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
		
		//若有公司该季度记录，则添加该对象
		int company_id=(int) request.getSession().getAttribute("companyId");
		int quarter=1;
		CompanyPersonGoal companyPersonGoal=companyService.selectCompanyPersonGoal(company_id, quarter);
		
		if(companyPersonGoal!=null){
			System.out.println("有数据");
			modelAndView.addObject("companyPersonGoal",companyPersonGoal);
		}
				
				
		modelAndView.setViewName("personal_goal");	
		return modelAndView;
	}
	@MethodLog(description="修改个人目标")
	@RequestMapping("/updateCompanyPersonGoal.do")
	public ModelAndView updateCompanyPersonGoal(HttpServletRequest request,CompanyPersonGoal companyPersonGoal) throws Exception {
		System.out.println("个人目标控制台。。。");
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=1;		
		//获取选中项数组
		String[] content=request.getParameterValues("11");
		//数组转换成字符串存入数据库
		String goalId="";
		for(String str:content){
			goalId+=str+",";
		}
		
		System.out.println("个人目标："+goalId);
		
		//由于与数据库字段名不匹配，需要手动注入
		companyPersonGoal.setCompanyId(company_id);
		companyPersonGoal.setGoalId(goalId);
		companyPersonGoal.setQuarter(quarter);
		
		//判断
		CompanyPersonGoal com=companyService.selectCompanyPersonGoal(company_id, quarter);
		if(com!=null)
		{
			//数据库更新操作
			companyService.updateCompanyPersonGoal(companyPersonGoal);
			
		}
		else{
			//数据库添加操作
			companyService.insertCompanyPersonGoal(companyPersonGoal);
			
		}
		//返回jsp
		ModelAndView modelAndView=personalGoalInfo(request);
		modelAndView.setViewName("personal_goal");	
		return modelAndView;
		
	}
	
	@MethodLog(description="查看实体销售操作")
	@RequestMapping(value="/showMarketInfo.do")
	public ModelAndView showMarketInfo(HttpServletRequest request){
		
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		
		System.out.println("实体销售中心。。。");
		List<MarketInfo> marketInfoList=companyService.showMarketInfo();//市场信息列表
		HashMap<MarketInfo, Integer> hm=new LinkedHashMap<MarketInfo,Integer>();//用于判断公司市场
		System.out.println("市场个数："+marketInfoList.size());
		for(int i=0;i<marketInfoList.size(); i++){
			System.out.println("第"+(i+1)+"个市场");
			MarketInfo ms=marketInfoList.get(i);
			CompanyMarket companyMarket=new CompanyMarket();
			companyMarket.setCompanyId((int)request.getSession().getAttribute("companyId"));
			companyMarket.setIsPhy(1);
			companyMarket.setQuarter(quarter);
			
			List<CompanyMarket> companyMarkets=showCompanymarket(companyMarket);//该季度公司市场记录
			
			System.out.println(companyMarkets.size()+"00000000000");//1000000000

			for(CompanyMarket cm:companyMarkets){
				String string=cm.getMarketId();
				String []ss=string.split(",");
	
				//判断是否选择了该市场，若选择了，则放入ms中，置值为1，反之为0
				for(String sss:ss){
					
					//System.out.println(sss);
					if(sss.equals(ms.getId().toString()))
					{
						hm.put(ms, 1);
					}
				}
			}
			if(!hm.containsKey(ms)){  
				hm.put(ms, 0);
			}
		}
		for(Integer i:hm.values()){System.out.println(i);}//打印市场的选择值（0或1）
		ModelAndView modelAndView =  new ModelAndView();
			
		modelAndView.addObject("marketInfoList",hm);
		modelAndView.addObject("quarter",quarter);
		
		modelAndView.setViewName("physicalStore");	
		return modelAndView;
	}
	
	private List<CompanyMarket> showCompanymarket(CompanyMarket companyMarket) {
		return		companyService.showCompanymarket(companyMarket);
	}

	@MethodLog(description="查看网络销售中心操作")
	@RequestMapping(value="/showMarketWebInfo.do")
	public ModelAndView showMarketWebInfo(HttpServletRequest request){
		
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		
		int companyId=(int) request.getSession().getAttribute("companyId");
		
		List<MarketInfo> marketInfoList=companyService.showMarketInfo();
		
		HashMap<MarketInfo, Integer> hm=new LinkedHashMap<MarketInfo,Integer>();
		
		CompanyMarket companyMarket=null;
		
		for(int i=0;i<marketInfoList.size(); i++){
			MarketInfo ms=marketInfoList.get(i);
			companyMarket=new CompanyMarket();
			companyMarket.setCompanyId(companyId);
			companyMarket.setIsPhy(0);
			companyMarket.setQuarter(quarter);
			List<CompanyMarket>companyMarkets=showCompanymarket(companyMarket);
			for(CompanyMarket cm:companyMarkets)
			{
				String string=cm.getMarketId();
				String []ss=string.split(",");
				
				for(String sss:ss){
					
					if(sss.equals(ms.getId().toString()))
					{
						hm.put(ms, 1);
					}
				}
				
			}
			if(!hm.containsKey(ms))  
			hm.put(ms, 0);
		}
		ModelAndView modelAndView =  new ModelAndView();
		modelAndView.addObject("quarter",quarter);
		modelAndView.addObject("marketInfoList",hm);
		modelAndView.setViewName("onlineStore");	
		return modelAndView;
	}
	
	@MethodLog(description="修改开设实体销售中心")
	@RequestMapping(value="/insertmarketinfo.do")
	public ModelAndView insertmarketinfo(HttpServletRequest request,String []market_id) throws Exception {
		
		List<String> markets=new ArrayList<String>();
		markets.add("1");
		markets.add("2");
		markets.add("3");
		markets.add("4");
		for(int i=0;i<market_id.length;i++){
			if(markets.contains(market_id[i])){
				markets.remove(market_id[i]);
			};
		}
		System.out.println("相减后的数组为：");
		for(int i=0;i<markets.size();i++){
			System.out.println(markets.get(i));
		}

		int quarter=Integer.parseInt(request.getParameter("quarter"));

		int company_id=(int)request.getSession().getAttribute("companyId");	
		
		String market_ids="";
		for(int i=0;i<market_id.length;i++){
			if(i!=market_id.length-1)
				market_ids+=market_id[i]+",";
			else {
				market_ids+=market_id[i];
				}
		}
		
		CompanyMarket market=new CompanyMarket();
		market.setCompanyId(company_id);
		market.setIsPhy(1);
		market.setQuarter(quarter);
		List<CompanyMarket>companyMarkets=showCompanymarket(market);
		if(companyMarkets.size()>0)
		{   
			market.setId(companyMarkets.get(0).getId());
			market.setMarketId(market_ids);
			companyService.updateCompanyMarket(market);
			
			HirePeople hirePeople=null;
			HirePeople flag=null;
			//计算出  前台未传递的市场值 删除hire_people表中对应的数据
			for(int i=0;i<markets.size();i++){
				int marketDelet = Integer.parseInt(markets.get(i));
				hirePeople=new HirePeople();
				hirePeople.setCompanyId(company_id);
				hirePeople.setMarketId(marketDelet);
				hirePeople.setQuarter(quarter);
				companyService.deleteHirePeople(hirePeople);
			}
			//再将前台 传递过来的 市场 id 插入对应到hire_people 表中
		
			for(int i=0;i<market_id.length;i++){
				hirePeople=new HirePeople();
				hirePeople.setMarketId(Integer.parseInt(market_id[i]));
				hirePeople.setCompanyId(company_id);
				hirePeople.setQuarter(quarter);
				hirePeople.setAfterSale(0);
				hirePeople.setSaleman(0);
				
				flag=companyService.checkHirePeople(hirePeople);
				if(flag==null){
					companyService.insertHirePeople(hirePeople);
				}
			}				
		}
		else{
			market.setMarketId(market_ids);
					
			companyService.insertCompanyMarket(market);
			HirePeople hirePeople=null;
			
			for(int i=0;i<market_id.length;i++){
				System.out.println("循环输出市场id："+market_id[i]);
				hirePeople=new HirePeople();
				hirePeople.setMarketId(Integer.parseInt(market_id[i]));
				hirePeople.setCompanyId(company_id);
				hirePeople.setQuarter(quarter);
				hirePeople.setAfterSale(0);
				hirePeople.setSaleman(0);
				companyService.insertHirePeople(hirePeople);
			}	
			
		}
			
		ModelAndView modelAndView = showMarketInfo(request);
		//	modelAndView.addObject("result",result);
		modelAndView.setViewName("physicalStore");	
		return modelAndView;
	}	
	
	@MethodLog(description="修改开设网络销售中心")		
	@RequestMapping(value="/insertmarketwebinfo.do")
	public ModelAndView insertmarketwebinfo(HttpServletRequest request,String []market_id) throws Exception {

		List<String> markets=new ArrayList<String>();
		markets.add("1");
		markets.add("2");
		markets.add("3");
		markets.add("4");
		for(int i=0;i<market_id.length;i++){
			if(markets.contains(market_id[i])){
				markets.remove(market_id[i]);
			};
		}
		System.out.println("相减后的数组为：");
		for(int i=0;i<markets.size();i++){
			System.out.println(markets.get(i));
		}
					
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));	
		
			
		//把数组中的值 拼成一个用逗号分隔得字符串
		String market_ids="";
		for(int i=0;i<market_id.length;i++){
			if(i!=market_id.length-1)
				market_ids+=market_id[i]+",";
				else {
					market_ids+=market_id[i];
				}
			}
		CompanyMarket market=new CompanyMarket();
		market.setCompanyId(company_id);
		market.setIsPhy(0);
		market.setQuarter(quarter);
		List<CompanyMarket>companyMarkets=showCompanymarket(market);
		if(companyMarkets.size()>0)
		{   
			market.setId(companyMarkets.get(0).getId());
			market.setMarketId(market_ids);
			companyService.updateCompanyMarket(market);
			
			HirePeopleOnline hirePeopleOnline=null;
			HirePeopleOnline flag=null;
			for(int i=0;i<markets.size();i++){
				int marketDelet = Integer.parseInt(markets.get(i));
				hirePeopleOnline=new HirePeopleOnline();
				hirePeopleOnline.setCompanyId(company_id);
				hirePeopleOnline.setMarketId(marketDelet);
				hirePeopleOnline.setQuarter(quarter);
				companyService.deleteHirePeopleOnline(hirePeopleOnline);
			}
			
			for(int i=0;i<market_id.length;i++){
				hirePeopleOnline=new HirePeopleOnline();
				hirePeopleOnline.setMarketId(Integer.parseInt(market_id[i]));
				hirePeopleOnline.setCompanyId(company_id);
				hirePeopleOnline.setQuarter(quarter);
				hirePeopleOnline.setAfterSale(0);
				hirePeopleOnline.setSaleman(0);
				
				flag=companyService.checkHirePeopleOnline(hirePeopleOnline);
				if(flag==null){
					companyService.insertHirePeopleOnline(hirePeopleOnline);
				}
			}
			
		}
		else{
			market.setMarketId(market_ids);
				
			companyService.insertCompanyMarket(market);
			
			HirePeopleOnline hirePeopleOnline=null;
			for(int i=0;i<market_id.length;i++){
				hirePeopleOnline=new HirePeopleOnline();
				hirePeopleOnline.setMarketId(Integer.parseInt(market_id[i]));
				hirePeopleOnline.setCompanyId(company_id);
				hirePeopleOnline.setQuarter(quarter);
				hirePeopleOnline.setAfterSale(0);
				hirePeopleOnline.setSaleman(0);
				companyService.insertHirePeopleOnline(hirePeopleOnline);
			}			
		}
			ModelAndView modelAndView = showMarketWebInfo(request);
			modelAndView.setViewName("onlineStore");	
			return modelAndView;
	}	
	
	@MethodLog(description="查看职位分配操作")
	@RequestMapping(value="/showAllMemberByComapnyId.do")
	public ModelAndView showAllMemberByComapnyId(HttpServletRequest request){
		System.out.println("职位分配显示控制台。。");
		
		ModelAndView modelAndView =  new ModelAndView();
		int id=(int) request.getSession().getAttribute("companyId");
		//根据公司ID查出所有成员
		List<Member> memberList=memberService.showAllMemberByComapnyId(id);
		List<Duty> dutyList=companyService.showAllPosition();
		
		//查询该公司下所有成员ID
		List<Integer> memberId=companyService.selectMemberIdByCompanyId(id);
		
		
		List<CompanyDuty> companyDuty=companyService.selectMemberDutyByCompanyId(id);
		
		
		modelAndView.addObject("companyDuty",companyDuty);
		modelAndView.addObject("memberList",memberList);
		modelAndView.addObject("dutyList",dutyList);
		modelAndView.setViewName("duty");	
		return modelAndView;
		}
	
	@MethodLog(description="查看团队规则操作")
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
	
	@MethodLog(description="修改目标策略")
	@RequestMapping("/updateCompanyStrategy.do")
	public ModelAndView updateCompanyStrategy(HttpServletRequest request,CompanyStrategy companyStrategy) throws Exception {
		System.out.println("success");
		
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		
		
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
	
	/*@MethodLog(description="查看品牌管理操作")
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
		public ModelAndView UpdateCompanyProduct(HttpServletRequest request){
			
			System.out.println("更新设计产品界面。。。");
			int company_id=(int) request.getSession().getAttribute("companyId");
			int quarter=1;
			String flag=request.getParameter("flag");
			if(flag.equals("insert")){
				System.out.println("添加产品");
				String cost=request.getParameter("productCost");
				
				CompanyProduct companyProduct=new CompanyProduct();
				companyProduct.setCompanyId(company_id);
				companyProduct.setQuarter(quarter);
				companyProduct.setName(request.getParameter("Brand_name"));
				companyProduct.setDetail(request.getParameter("selectOption"));
				companyProduct.setCost(Integer.parseInt(cost));
				companyService.insertCompanyProduct(companyProduct);
			}
			else{
				//更新操作
				System.out.println("更新产品");
				int productId=Integer.parseInt(request.getParameter("productId"));
				System.out.println("更新产品Id："+productId);
				CompanyProduct companyProduct=new CompanyProduct();	
				String cost=request.getParameter("productCost");
				companyProduct.setId(productId);
				companyProduct.setName(request.getParameter("Brand_name"));
				companyProduct.setDetail(request.getParameter("selectOption"));
				companyProduct.setCost(Integer.parseInt(cost));
				companyService.updateCompanyProduct(companyProduct);
			}
			
			ModelAndView modelAndView = CompanyProduct(request);
			return modelAndView;
		}

	@RequestMapping(value="/showProductDetail2.do")
		public ModelAndView showProductDetail2(HttpServletRequest request,CompanyProduct companyProduct) throws Exception {
			
			System.out.println("产品设计信息。。。");
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
			
			if(companyProduct.getId()!=null){
				System.out.println("产品ID："+companyProduct.getId());
				System.out.println("产品配置："+companyProduct.getDetail());
				String detail=companyProduct.getDetail();
				String[] ss=detail.split(",");
				//用于判断产品配置
				HashMap<ProductInfo, Integer> hm=new LinkedHashMap<ProductInfo,Integer>();
				List<ProductInfo> productInfoList=companyService.showAllDetail();
				System.out.println("配置个数："+productInfoList.size());
				for(int i=0;i<productInfoList.size();i++){
					System.out.println("第"+(i+1)+"个配置");
					ProductInfo productInfo=productInfoList.get(i);
					for(int j=0;j<ss.length;j++){
						if(ss[j].equals(productInfo.getId().toString())){
							hm.put(productInfo, 1);
							System.out.println("1111,"+productInfo.getId());
						}
					}
					if(!hm.containsKey(productInfo)){
						hm.put(productInfo,0);
						System.out.println("0000,"+productInfo.getId());
					}
				}
				for(Integer i:hm.values()){System.out.println(i);}//打印市场的选择值（0或1）
				modelAndView.addObject("productInfoList",hm);
				modelAndView.addObject("productId",companyProduct.getId());
				modelAndView.addObject("detail", companyProduct.getDetail());
				modelAndView.addObject("brandName", companyProduct.getName());
			}
			modelAndView.setViewName("brand_ds2");	
			return modelAndView;
		}

	@RequestMapping("/operateProduct.do")
		public ModelAndView operateProduct(HttpServletRequest request) throws Exception {
			// 获取操作的方法
			System.out.println("操作产品。。。");
			
			int productId=Integer.parseInt(request.getParameter("id"));
			System.out.println("产品ID："+productId);
			String method = request.getParameter("method");
			System.out.println("操作方法:"+method);
			
			// 初始化一个ModelAndView
			ModelAndView modelAndView =new ModelAndView();
			
			if(method.equals("delete")){
				System.out.println("删除操作");
				companyService.deleteCompanyProduct(productId);
				modelAndView=CompanyProduct(request);
				modelAndView.setViewName("design");
			}else{
				System.out.println("查询操作");
				CompanyProduct companyProduct=companyService.selectProductByProductId(productId);
				System.out.println("产品名称："+companyProduct.getName());
				System.out.println("产品成本："+companyProduct.getCost());
				modelAndView =showProductDetail2(request,companyProduct);
				modelAndView.addObject("companyProduct", companyProduct);
				modelAndView.setViewName("brand_ds2");
			}
			return modelAndView;
		}*/
	
	
	
	@MethodLog(description="查看固定产能操作")
	@RequestMapping(value = "/showCapacityInfo.do")
	public ModelAndView showCapacityInfo(HttpServletRequest request) {
		int companyId = (int) request.getSession().getAttribute("companyId");
		
		//导航栏传过来的 季度值
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		
		int currentQuarter=(int) request.getSession().getAttribute("currentQuarter");
		
		CompanyCapacity proCompanyCapacity=null;
		if(quarter-1>0){
			
			proCompanyCapacity=companyService.selectCompanyCapacity(companyId,quarter-1);
			
		}
		
		
		List<CapacityInfo> capacityInfoList = companyService.showCapacityInfo();
		List<CompanyCapacity> companyCapacityList1 = companyService.showCapacityInfo1(companyId,quarter);
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("proCompanyCapacity",proCompanyCapacity);
		modelAndView.addObject("quarter",quarter);
		modelAndView.addObject("capacityInfoList", capacityInfoList);
		modelAndView.addObject("companyCapacityList1", companyCapacityList1);
		
		if(currentQuarter>quarter){
			modelAndView.setViewName("constantProduce0");
		}else{
			modelAndView.setViewName("constantProduce");
		}
		return modelAndView;
		
	}

	@MethodLog(description="修改固定产能")
	@RequestMapping(value = "/showCapacityInfo1.do")
	public ModelAndView showCapacityInfo1(HttpServletRequest request) {

		String number = request.getParameter("number");
		System.out.println(number);
		
		float invest=Float.parseFloat(request.getParameter("invest"));
		System.out.println(invest);
		
		// 获取公司id
		int companyId = (int) request.getSession().getAttribute("companyId");
		
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		
			
		int numberInt = Integer.parseInt(number);
		int proNumber=0;
		
		if(quarter-1!=0){
			CompanyCapacity companyCapacity=companyService.selectCompanyCapacity(companyId, quarter-1);
			proNumber=companyCapacity.getCapacityNow()+companyCapacity.getCapacityAdd();
		}
		
		
		// 页面显示的静态数据
		List<CapacityInfo> capacityInfoList = companyService.showCapacityInfo();
		// 查询当前要插入表中的数据
		CapacityInfo capacityInfo = companyService.selectCapacityInfo(numberInt);
		System.out.println(capacityInfo.getNumber());
		// 查询要显示的信息的总条数
		int count = companyService.selectTotalCount(companyId, quarter);
		System.out.println(count);
		if (count == 0) {
			// 插入数据
			companyService.insertCompanyCapacity(0,numberInt, companyId,quarter);

		}
		else{
			companyService.updateCompanyCapacity(proNumber,numberInt,companyId,quarter);
		}
		
		return showCapacityInfo(request);
	}

	@MethodLog(description="查看员工薪酬")
	@RequestMapping(value="/showAverageSalary.do")
	public ModelAndView showAverageSalary(HttpServletRequest request){
		
		AverageSalary sales=companyService.showAverageSalaryOfSale();
		System.out.println(sales.getRegion());
		AverageSalary workers=companyService.showAverageSalaryOfWork();
		
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("sales", sales);
		modelAndView.addObject("workers", workers);
		modelAndView.setViewName("staffWage");
		return modelAndView;
	}
	@MethodLog(description="修改职位分配")
	@RequestMapping("/updateCompanyDuty.do")
	public ModelAndView updateCompanyDuty(HttpServletRequest request) throws Exception {
		System.out.println("职位分配控制台。。。");
		
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=1;	
		System.out.println("公司ID:"+company_id+"季度："+quarter);
		
		//成员ID的数组
		String[] member=request.getParameterValues("myHidden");
		//遍历，并存入其对应主要职责及次要职责ID
		for(int i=0;i<member.length;i++){
			
			CompanyDuty companyDuty=new CompanyDuty();
			
			companyDuty.setCompanyId(company_id);
			
			companyDuty.setMemberId(Integer.parseInt(member[i]));
			
			companyDuty.setImg("123");
			
			String main=request.getParameter(member[i]+"_main");
			System.out.println(member[i]+"的主要职责ID："+main);
			companyDuty.setMainId(Integer.parseInt(main));
			
			String minor=request.getParameter(member[i]+"_minor");
			System.out.println(member[i]+"的次要职责ID："+minor);
			companyDuty.setMinorId(Integer.parseInt(minor));
			
			//查询是否数据库已有该成员职责数据
			CompanyDuty flag=companyService.selectMemberByMemberId(Integer.parseInt(member[i]));
			//根据flag判断更新或者添加数据库
			if(flag==null){
				System.out.println("进行添加职责操作");
				companyService.insertMemberDuty(companyDuty);
			}
			else{
				System.out.println("进行更新操作");
				companyService.updateMemberDuty(companyDuty);
			}
		}
		
		ModelAndView modelAndView=showAllMemberByComapnyId(request);
		modelAndView.setViewName("duty");	
		return modelAndView;
		
	}
	
	
	
	/* 第二季度相关决策  */
	
	@MethodLog(description="显示业内工厂工人薪酬")
	@RequestMapping("/showWorkersSalary.do")
	public ModelAndView showWorkersSalary(HttpServletRequest request) throws Exception {
		System.out.println("显示业内工厂工人薪酬。。。");
		
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));	
		System.out.println("公司ID:"+company_id+"季度："+quarter);
		ModelAndView modelAndView=new ModelAndView();
		
		List<WorkersSalary> workersSalaryList=companyService.selectCompanyWorkersSalary(company_id, quarter);
		modelAndView.addObject("quarter", quarter);
		modelAndView.addObject("workersSalaryList", workersSalaryList);
		modelAndView.addObject("len", workersSalaryList.size());
		modelAndView.setViewName("workersSalary");
		return modelAndView;
	}
	
	@MethodLog(description="更新业内工厂工人薪酬")
	@RequestMapping(value = "/showWorkersSalary1.do")
	public ModelAndView showWorkersSalary1(HttpServletRequest request) throws Exception {
		int companyIdInt = (int) request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		//获取表单数据
		int salary = Integer.parseInt(request.getParameter("salary"));
		int welfare = Integer.parseInt(request.getParameter("welfare"));
		int holiday = Integer.parseInt(request.getParameter("holiday"));
		int publicFund = Integer.parseInt(request.getParameter("publicFund"));
		int companyPension = Integer.parseInt(request.getParameter("companyPension"));
		int retiredPay = Integer.parseInt(request.getParameter("retiredPay"));
		//计算总成本
		int salaryTotal=(int)(salary+(float)(welfare*salary)/100+(float)(publicFund*salary)/100+(float)(companyPension*salary)/100+(float)(retiredPay*salary)/100+(float)(holiday*salary)/365);
		System.out.println("总成本："+salaryTotal);
		
		WorkersSalary workersSalary=new WorkersSalary();
		workersSalary.setCompanyId(companyIdInt);
		workersSalary.setQuarter(quarter);
		workersSalary.setSalary(salary);
		workersSalary.setWelfare(welfare);
		workersSalary.setHoliday(holiday);
		workersSalary.setPublicFund(publicFund);
		workersSalary.setCompanyPension(companyPension);
		workersSalary.setRetiredPay(retiredPay);
		workersSalary.setSalaryTotal(salaryTotal);
		
		
		List<WorkersSalary> workersSalaryList=companyService.selectCompanyWorkersSalary(companyIdInt, quarter);
	    if(workersSalaryList.size()==0){
	    	companyService.insertCompanyWorkersSalary(workersSalary);
	    }else{
	    	companyService.updateCompanyWorkersSalary(workersSalary);
	    }
	    ModelAndView mv=showWorkersSalary(request);
	    return mv;
	}
	
	//销售人员薪酬
	
	@MethodLog(description = "查看业内销售人员薪酬")
	@RequestMapping(value = "/showAllSalesSalary.do")
	public ModelAndView showAllSalesSalary(HttpServletRequest request) {

		int quarter =Integer.parseInt(request.getParameter("quarter"));
		int companyId = (int) request.getSession().getAttribute("companyId");
		List<AllSalesSalaryVo> allVoList = new ArrayList<>();
		allVoList = companyService.findSalaryofAllCompanysbyCompanyID(companyId, quarter);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("allVoList", allVoList);
		modelAndView.setViewName("allSalesSalary");
		System.out.println("returned");
		return modelAndView;

	}
	
	@MethodLog(description = "查看业内工厂工人薪酬")
	@RequestMapping(value = "/showAllWorkersSalary.do")
	public ModelAndView showAllWorkersSalary(HttpServletRequest request) {
		int quarter = Integer.parseInt(request.getParameter("quarter"));
		int companyId = (int) request.getSession().getAttribute("companyId");
		List<AllWorkersSalaryVo> allVoList = new ArrayList<>();
		allVoList = companyService.findWSalaryofAllCompanysbyCompanyID(companyId, quarter);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("allVoList", allVoList);
		modelAndView.setViewName("allWorkersSalary");
		return modelAndView;
	}
	
	
		@MethodLog(description="显示业内销售人员薪酬")
		@RequestMapping("/showSalesSalary.do")
		public ModelAndView showSalesSalary(HttpServletRequest request) throws Exception {
			System.out.println("显示业内销售人员薪酬。。。");
			
			//获取公司id和季度
			int company_id=(int)request.getSession().getAttribute("companyId");
			String quarterString=request.getParameter("quarter");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			try {
				quarter = Integer.parseInt(quarterString);	
				
			} catch (NumberFormatException e) {
			    e.printStackTrace();
			}
			
			System.out.println("公司ID:"+company_id+"季度："+quarter);
			ModelAndView modelAndView=new ModelAndView();
			
			List<SalesSalary> salesSalaryList=companyService.selectCompanySalesSalary(company_id, quarter);
			modelAndView.addObject("salesSalaryList", salesSalaryList);
			modelAndView.addObject("len", salesSalaryList.size());
			modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("salesSalary");
			return modelAndView;
		}
		
		@MethodLog(description="更新业内销售人员薪酬")
		@RequestMapping(value = "/updateSalesSalary2.do")
		public ModelAndView updateSalesSalary2(HttpServletRequest request) throws Exception {
			int companyIdInt = (int) request.getSession().getAttribute("companyId");
			
			
			int quarter = Integer.parseInt(request.getParameter("quarter"));

			//获取表单数据
			int salary = Integer.parseInt(request.getParameter("salary"));
			int welfare = Integer.parseInt(request.getParameter("welfare"));
			int holiday = Integer.parseInt(request.getParameter("holiday"));
			int publicFund = Integer.parseInt(request.getParameter("publicFund"));
			int companyPension = Integer.parseInt(request.getParameter("companyPension"));
			int retiredPay = Integer.parseInt(request.getParameter("retiredPay"));
			//计算总成本
			int salaryTotal=(int)(salary+(float)(welfare*salary)/100+(float)(publicFund*salary)/100+(float)(companyPension*salary)/100+(float)(retiredPay*salary)/100+(float)(holiday*salary)/365);
			System.out.println("总成本："+salaryTotal);
			
			SalesSalary salesSalary=new SalesSalary();
			salesSalary.setCompanyId(companyIdInt);
			salesSalary.setQuarter(quarter);
			salesSalary.setSalary(salary);
			salesSalary.setWelfare(welfare);
			salesSalary.setHoliday(holiday);
			salesSalary.setPublicFund(publicFund);
			salesSalary.setCompanyPension(companyPension);
			salesSalary.setRetiredPay(retiredPay);
			salesSalary.setSalaryTotal(salaryTotal);
			
			
			List<SalesSalary> salesSalaryList=companyService.selectCompanySalesSalary(companyIdInt, quarter);
		    if(salesSalaryList.size()==0){
		    	companyService.insertCompanySalesSalary(salesSalary);
		    }else{
		    	companyService.updateCompanySalesSalary(salesSalary);
		    }
		    ModelAndView mv=showSalesSalary(request);
		    return mv;
		}
		
		// 需求量预测
		@MethodLog(description = "查看需求量预测操作")
		@RequestMapping(value = "/showDemandForecast.do")
		public ModelAndView showDemandForecast(HttpServletRequest request) {
			int companyIdInt = (int) request.getSession().getAttribute("companyId");
			List<DemandForecast> demandForecastList = companyService.selectDemandForecast(companyIdInt, 2);
			List<CompanyProduct> demandForecastList2 = companyService.selectDemandForecast2(companyIdInt, 2);
			List<CompanyProduct> companyProducts = companyService.selectProductByCompanyId(companyIdInt);
			ModelAndView modelAndView = new ModelAndView();
		
			
			modelAndView.addObject("demandForecastList", demandForecastList);
			
			modelAndView.addObject("demandForecastList2", demandForecastList2);
			
			modelAndView.addObject("companyProducts", companyProducts);
			modelAndView.setViewName("demandForecast");
			return modelAndView;
		}

		/*@MethodLog(description = "修改需求量预测")
		@RequestMapping(value = "/showDemandForecast1.do")
		public ModelAndView showDemandForecast1(HttpServletRequest request) {
			int companyIdInt = (int) request.getSession().getAttribute("companyId");
			String[] ids = request.getParameterValues("ids");
			String[] nums = request.getParameterValues("demand_num_two");

			List<DemandForecast> demandForecastList = companyService.selectDemandForecast(companyIdInt, 2);
			String demandAveragePhy = request.getParameter("demand_average_phy");
			String demandAverageWeb = request.getParameter("demand_average_web");
			Integer demandAveragePhyt = Integer.parseInt(demandAveragePhy);
			Integer demandAverageWebt = Integer.parseInt(demandAverageWeb);
			if (demandForecastList.size() == 0) {
				companyService.insertDemandForecast(companyIdInt, 2, demandAveragePhyt, demandAverageWebt);
			} else {
				companyService.updateDemandForecast(companyIdInt, 2, demandAveragePhyt, demandAverageWebt);
			}

			for (int i = 0; i < ids.length; i++) {
				Integer id = Integer.parseInt(ids[i]);
				Integer demandNumt = Integer.parseInt(nums[i]);
				CompanyProduct companyProduct = new CompanyProduct();
				companyProduct.setId(id);
				companyProduct.setDemandNumTwo(demandNumt);
				companyService.updateDemandForecast2(companyProduct);
			}
			ModelAndView mv = showDemandForecast(request);
			return mv;
		}*/
		
		
		//需求量预测  改
		
		@MethodLog(description = "查看需求量预测操作")
		@RequestMapping(value = "/demandForecast.do")
		public ModelAndView demandForecast(HttpServletRequest request) {
			
			int companyId = (int) request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			
			
			
			// 实体销售中心的销售数量   不区分市场
			
			//上季度
			List<HirePeople> hirePeopelListPro=companyService.selectHirePeopleList(companyId,quarter-1);
			int phySalemanNumberPro=0;
			if(hirePeopelListPro!=null){
				for(HirePeople hirePeople:hirePeopelListPro ){
					phySalemanNumberPro+=hirePeople.getSaleman();
				}
			}
			
			
			//这季度
			List<HirePeople> hirePeopelList=companyService.selectHirePeopleList(companyId,quarter);
			int phySalemanNumber=0;
			if(hirePeopelList!=null){
				for(HirePeople hirePeople:hirePeopelList ){
					phySalemanNumber+=hirePeople.getSaleman();
				}
			}
			
			// 网络销售中心的销售人员数量  不区分市场
			
			//上季度
			
			List<HirePeopleOnline> hirePeopleOnlineListPro=companyService.selectHirePeopleOnlineList(companyId,quarter-1);
			int webSalemanNumberPro=0;
			if(hirePeopelList!=null){
				for(HirePeopleOnline hirePeopleOnline:hirePeopleOnlineListPro ){
					webSalemanNumberPro+=hirePeopleOnline.getSaleman();
				}
			}
			
			//这季度
			List<HirePeopleOnline> hirePeopleOnlineList=companyService.selectHirePeopleOnlineList(companyId,quarter);
			int webSalemanNumber=0;
			if(hirePeopelList!=null){
				for(HirePeopleOnline hirePeopleOnline:hirePeopleOnlineList ){
					webSalemanNumber+=hirePeopleOnline.getSaleman();
				}
			}
			
			//获取人均需求量 
			
			DemandForecast demandForecast=companyService.getDemandForecastByCompanyIdAndQuarter(companyId,quarter);
			
			DemandForecast demandForecastPro=companyService.getDemandForecastByCompanyIdAndQuarter(companyId,quarter-1);
			
			if(demandForecastPro==null){
				demandForecastPro=new DemandForecast();
				demandForecastPro.setDemandAveragePhy(0);
				demandForecastPro.setDemandAverageWeb(0);
			}
			
			//获取产品信息
			
			Map<Integer,List<CompanyProductVo>> companyProductResult=new HashMap<Integer,List<CompanyProductVo>>();
			int demandNumber=0;
			
			for(int i=1;i<=quarter;i++){
				List<CompanyProductVo> companyProductList=companyService.selectCompanyProduct(companyId,i,quarter);
				
				for(CompanyProductVo companyProductVo:companyProductList){
					demandNumber+=companyProductVo.getDemand();
				}
				
				if(companyProductList!=null){
					companyProductResult.put(i, companyProductList);
				}
			}
			
			Map<Integer,List<CompanyProductVo>> companyProductResult2=new HashMap<Integer,List<CompanyProductVo>>();
			
			
			
			int demandNumberPro=0;
			for(int i=1;i<=quarter;i++){
				List<CompanyProductVo> companyProductList2=companyService.selectCompanyProduct(companyId,i,quarter-1);
				
				for(CompanyProductVo companyProductVo:companyProductList2){
					demandNumberPro+=companyProductVo.getDemand();
				}
				
				if(companyProductList2!=null){
					companyProductResult2.put(i, companyProductList2);
				}
			}
			
			
			

			ModelAndView modelAndView = new ModelAndView();
			
			
			modelAndView.addObject("quarter", quarter);
			modelAndView.addObject("phySalemanNumberPro", phySalemanNumberPro);
			modelAndView.addObject("webSalemanNumberPro", webSalemanNumberPro);
			modelAndView.addObject("phySalemanNumber", phySalemanNumber);
			modelAndView.addObject("webSalemanNumber", webSalemanNumber);
			
			modelAndView.addObject("demandForecastPro", demandForecastPro);
			modelAndView.addObject("demandForecast", demandForecast);
			
			modelAndView.addObject("companyProductResult", companyProductResult);
			modelAndView.addObject("companyProductResult2", companyProductResult2);
			
			modelAndView.addObject("demandNumberPro", demandNumberPro);
			modelAndView.addObject("demandNumber", demandNumber);
			
			
			modelAndView.setViewName("demandForecast2");
			return modelAndView;
				
			
		}
		
		
		@MethodLog(description = "更新需求量预测操作")
		@RequestMapping(value = "/updateDemandForecast.do")
		public ModelAndView updateDemandForecast(HttpServletRequest request) {
			
			int companyId = (int) request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			
			String string1=request.getParameter("demand_average_phy");
			String string2=request.getParameter("demand_average_web");
			if(string1==null||string1.equals("")){
				string1="0";
			}
			if(string2==null||string2.equals("")){
				string2="0";
			}
			
			int demandAveragePhy=Integer.parseInt(string1);
																		
			int demandAverageWeb=Integer.parseInt(string2);
			
			if(companyService.getDemandForecastByCompanyIdAndQuarter(companyId, quarter)!=null){
				
				companyService.updateDemandForecast(companyId, quarter, demandAveragePhy, demandAverageWeb);
			}else{
				companyService.insertDemandForecast(companyId, quarter, demandAveragePhy, demandAverageWeb);
			}
				
			String[] productIds=request.getParameterValues("productId");
			System.out.println("产品Id为："+productIds[0]);
			
			for(int i=0;i<productIds.length;i++){
				int demand=Integer.parseInt(request.getParameter(productIds[i]+"demand"));
				int productId=Integer.parseInt(productIds[i]);
				companyService.updateProductDemand(productId, quarter, demand);
			}
			
			
			
			return demandForecast(request);
			
		}
		
		
		
		
		
		@MethodLog(description="显示销货成本")
		@RequestMapping("/showSoldCost.do")
		public ModelAndView showSoldCost(HttpServletRequest request) throws Exception {
			System.out.println("销货成本控制台。。。");
			
			//获取公司id和季度
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=2;	
			System.out.println("公司ID:"+company_id+"季度："+quarter);
			
			//获取该公司当季度及之前的所有产品及成本
			ModelAndView modelAndView=new ModelAndView();
			List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, 1);
			for(int i=2;i<=quarter;i++){
				companyProducts.addAll(companyService.selectProductByCompanyIdAndQuarter(company_id, i));
			}
			modelAndView.addObject("companyProducts", companyProducts);
			
			modelAndView.setViewName("soldCost");	
			return modelAndView;
		}
		
		@MethodLog(description="显示产品定价")
		@RequestMapping("/showProductPrice.do")
		public ModelAndView showProductPrice(HttpServletRequest request) throws Exception {
			System.out.println("产品定1价控制台。。。");
			
			//获取公司id和季度
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=2;	
			
			ModelAndView modelAndView=new ModelAndView();
			
			//找出所有产品,并记录
			List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, 1);
			for(int i=2;i<=quarter;i++){
				companyProducts.addAll(companyService.selectProductByCompanyIdAndQuarter(company_id, i));
			}
			for(int i=0;i<companyProducts.size();i++){
				int productId=companyProducts.get(i).getId();
				if(companyService.selectProductPrice2(productId, quarter)==null){
					companyService.insertProductPrice2(productId, company_id, quarter);
				}
			}
			//查询获取
			List<ProductPrice> productPrices=companyService.selectProductPrice(company_id, 1);
			for(int i=2;i<=quarter;i++){
				productPrices.addAll(companyService.selectProductPrice(company_id, i));
			}
			modelAndView.addObject("companyProducts", companyProducts);
			modelAndView.addObject("productPrices", productPrices);
			modelAndView.setViewName("setPrice");	
			return modelAndView;
		}
		
		
		@MethodLog(description="操作产品定价")
		@RequestMapping("/operateProductPrice.do")
		public ModelAndView operateProductPrice(HttpServletRequest request) throws Exception {
			System.out.println("操作产品定价。。。");
			
			//获取公司id和季度
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=2;	
			System.out.println("公司ID:"+company_id+"季度："+quarter);
			
			//获取表单数据
			String[] productId=request.getParameterValues("productId");
			for(int i=0;i<productId.length;i++){
				String price=request.getParameter(productId[i]+"price");
				String youji=request.getParameter(productId[i]+"youji");
				
				if(price==null||price.equals("")){
					price="0";
				}
				if(youji==null||youji.equals("")){
					youji="0";
				}
				
				System.out.println("产品ID"+Integer.parseInt(productId[i])+"产品价格："+Integer.parseInt(price)+"邮寄返款："+youji);
				companyService.updateProductPrice(Integer.parseInt(productId[i]), quarter, Integer.parseInt(price),Integer.parseInt(youji) );
			}
			ModelAndView modelAndView=showProductPrice(request);
			return modelAndView;
		}
		
		/*@MethodLog(description="显示主流媒体投放")*/
		@RequestMapping("/showOperateMedia.do")
		public ModelAndView showOperateMedia(HttpServletRequest request) throws Exception {
			System.out.println("显示主流媒体投放成功");
			//获取公司id和季度
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));	
		
			
			ModelAndView modelAndView=new ModelAndView();
			//媒体初始信息
			
			List<MediaInfo> mediaInfos=staticInfoService.showMediaInfo();
			
			modelAndView.addObject("mediaInfos", mediaInfos);
			System.out.println("媒体初始："+mediaInfos.size());
			//产品初始信息
			List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, 1);
			for(int i=2;i<=quarter;i++){
				List<CompanyProduct> xx=companyService.selectProductByCompanyIdAndQuarter(company_id, i);
				companyProducts.addAll(xx);
			}
			System.out.println("list："+companyProducts.size());
			modelAndView.addObject("companyProducts", companyProducts);
			modelAndView.addObject("len", companyProducts.size());
			modelAndView.addObject("quarter", quarter);
			
			//公司媒体投放信息
			List<CompanyMedia> companyMedias=companyService.selectTotalCompanyMedia(company_id, quarter);
			if(companyMedias!=null){
				modelAndView.addObject("companyMedias", companyMedias);
			}
			modelAndView.setViewName("operateMedia");
			return modelAndView;
		}
		
		@MethodLog(description="操作媒体投放")
		@RequestMapping("/UpdateCompanyMedia.do")
		public ModelAndView UpdateCompanyMedia(HttpServletRequest request) throws Exception {
			System.out.println("操作媒体投放。。。");
			
			//获取公司id和季度
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));	
			
			//产品初始信息
			List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, 1);
			for(int i=2;i<=quarter;i++){
				List<CompanyProduct> xx=companyService.selectProductByCompanyIdAndQuarter(company_id, i);
				companyProducts.addAll(xx);
			}
			System.out.println("companyProduct:"+companyProducts.size());
			//获取mediaId
			String[] mediaId=request.getParameterValues("mediaId");
			System.out.println("mediaId："+mediaId.length);
			
			for(int i=0;i<companyProducts.size();i++){
				int productId=companyProducts.get(i).getId();
				String[] productMedia=request.getParameterValues(Integer.toString(productId));
				for(int j=0;j<productMedia.length;j++){
					CompanyMedia companyMedia=new CompanyMedia();
					System.out.println(company_id);
					System.out.println(mediaId[j]);
					System.out.println(Integer.parseInt(productMedia[j]));
					System.out.println(quarter);
					System.out.println(productId);
					
					companyMedia.setCompanyId(company_id);
					companyMedia.setMediaId((j+1));
					companyMedia.setNum(Integer.parseInt(productMedia[j]));
					companyMedia.setQuarter(quarter);
					companyMedia.setProductId(productId);
					
					//判断是添加还是更新操作
					List<CompanyMedia> companyMedias=companyService.selectCompanyMedia(company_id, quarter, Integer.parseInt(mediaId[j]), productId);
					if(companyMedias.size()==0){
						System.out.println("添加操作");
						companyService.insertCompanyMedia(companyMedia);
					}else{
						System.out.println("更新操作");
						companyService.updateCompanyMedia(companyMedia);
					}
				}
			}
			ModelAndView modelAndView=showOperateMedia(request);
			return modelAndView;
		}

	@MethodLog(description="显示市场调研报告")
	@RequestMapping("/ShowCompanyReport.do")
	public ModelAndView ShowCompanyReport(HttpServletRequest request) throws Exception {
		System.out.println("显示购买调研报告。。。");
		
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));	
		System.out.println("公司ID:"+company_id+"季度："+quarter);
		
		String flag=companyService.selectCompanyReport(company_id, quarter);
		System.out.println("flag："+flag);
		
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("flag", flag);
		modelAndView.addObject("quarter", quarter);
		modelAndView.setViewName("buyReport");
		return modelAndView;
	}


@MethodLog(description="操作市场调研报告")
	@RequestMapping("/OperateReport.do")
	public ModelAndView OperateReport(HttpServletRequest request) throws Exception {
		System.out.println("操作购买调研报告。。。");
		
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));	
		
		//获取表单数据
		String flag=request.getParameter("flag");
		System.out.println("flag："+flag);
		int buyReport=0;
		if(flag.equals("true")){
			buyReport=1;
		}
		System.out.println("公司ID:"+company_id+"季度："+quarter+"buy:"+buyReport);
		//判断是添加记录还是更新记录
		String a=companyService.selectCompanyReport(company_id, quarter);
		if(a==null){
			System.out.println("添加记录");
			companyService.insertCompanyReport(company_id, quarter, buyReport);
		}else{
			System.out.println("更新记录");
			companyService.updateCompanyReport(company_id, quarter, buyReport);
		}
		
		ModelAndView modelAndView=ShowCompanyReport(request);
		return modelAndView;
	}

	@MethodLog(description="核查广告语")
	@RequestMapping("/checkAdvertisement.do")
	public ModelAndView checkAdvertisement(HttpServletRequest request) throws Exception {
		System.out.println("核查广告语。。。");
		
		//获取公司id和季度
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));	
		System.out.println("公司ID:"+company_id+"季度："+quarter);
		
		ModelAndView modelAndView=new ModelAndView();
		//查询公司广告信息
		List<CompanyAdvertise> companyAdvertises=companyService.selectCompanyAdvertise(company_id, quarter);
		modelAndView.addObject("companyAdvertises", companyAdvertises);
		//查询广告语信息
		List<AdvertiseInfo> advertiseInfos=staticInfoService.showAdvertiseInfo();
		modelAndView.addObject("advertiseInfos", advertiseInfos);
		
		modelAndView.setViewName("checkAdvertise");
		return modelAndView;
	}
		
		
		@MethodLog(description="查看品牌管理操作")
		@RequestMapping(value = "/CompanyProduct.do")
		public ModelAndView CompanyProduct(HttpServletRequest request,int quarter) {
			
			System.out.println("查看品牌管理操作success");
			int companyId=(int) request.getSession().getAttribute("companyId");
			
			
			
			//查询当前导航栏中所有产品
			List<List<CompanyProduct>> companyProductList=new ArrayList<List<CompanyProduct>>();
			
			for(int i=1;i<=quarter;i++)
			{
				List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(companyId, i);
				companyProductList.add(companyProducts);
			}
			
			/*List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(companyId, quarter);
			if(quarter>1){
				for(int i=2;i<=quarter;i++)
				{
					List<CompanyProduct> xx=companyService.selectProductByCompanyIdAndQuarter(companyId, i);
					companyProducts.addAll(xx);
				}
			}*/
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("quarter",quarter);
			modelAndView.addObject("companyProductList", companyProductList);
			modelAndView.setViewName("design");
			return modelAndView;
		}	
		
		@RequestMapping("/operateProduct.do")
		public ModelAndView operateProduct(HttpServletRequest request) throws Exception {
			// 获取操作的方法
			System.out.println("操作产品。。。");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			int productId=Integer.parseInt(request.getParameter("id"));
			System.out.println("产品ID："+productId);
			String method = request.getParameter("method");
			System.out.println("操作方法:"+method);
			
			// 初始化一个ModelAndView
			ModelAndView modelAndView =new ModelAndView();
			
			if(method.equals("delete")){
				System.out.println("删除操作");
				companyService.deleteCompanyProduct(productId);
				companyService.deleteCompanyProductDemand(productId);
				companyService.deleteProductPrice(productId);
				companyService.deleteCompanyProductInventory(productId);
				companyService.deleteCompanyMedia(productId);
				companyService.deleteCompanyAdvertise(productId);
				modelAndView=CompanyProduct(request,quarter);
				modelAndView.setViewName("design");
			}else{
				System.out.println("查询操作");
				CompanyProduct companyProduct=companyService.selectProductByProductId(productId);
				System.out.println("查询出来的产品类型："+companyProduct.getType());
				System.out.println("产品名称："+companyProduct.getName());
				System.out.println("产品成本："+companyProduct.getCost());
				modelAndView =showProductDetail2(request,companyProduct);
			}
			return modelAndView;
		}
		
		@RequestMapping(value="/showProductDetail2.do")
		public ModelAndView showProductDetail2(HttpServletRequest request,CompanyProduct companyProduct) throws Exception {
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			
			int currentQuarter=(int) request.getSession().getAttribute("currentQuarter");
			String quarterFlag="true";

		
			
			System.out.println("产品设计信息。。。");
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
			
			
			if(companyProduct.getId()!=null){
				
				//判断季度，默认值是第二季度
				
				if(companyProduct.getQuarter()<currentQuarter){
					quarterFlag="false"; //false  前台不能修改产品参数
				}else{
					quarterFlag="true";  //true   前台可以修改产品参数
				}
				
				String detail=companyProduct.getDetail();
				String[] ss=detail.split(",");
				//用于判断产品配置
				HashMap<ProductInfo, Integer> hm=new LinkedHashMap<ProductInfo,Integer>();
				List<ProductInfo> productInfoList=companyService.showAllDetail();
				System.out.println("配置个数："+productInfoList.size());
				for(int i=0;i<productInfoList.size();i++){
					System.out.println("第"+(i+1)+"个配置");
					ProductInfo productInfo=productInfoList.get(i);
					for(int j=0;j<ss.length;j++){
						if(ss[j].equals(productInfo.getId().toString())){
							hm.put(productInfo, 1);
							System.out.println("1111,"+productInfo.getId());
						}
					}
					if(!hm.containsKey(productInfo)){
						hm.put(productInfo,0);
						System.out.println("0000,"+productInfo.getId());
					}
				}
				for(Integer i:hm.values()){System.out.println(i);}//打印市场的选择值（0或1）
				modelAndView.addObject("productInfoList",hm);
				modelAndView.addObject("quarter",quarter);
				modelAndView.addObject("currentQuarter",currentQuarter);
				modelAndView.addObject("productId",companyProduct.getId());
				modelAndView.addObject("detail", companyProduct.getDetail());
				modelAndView.addObject("brandName", companyProduct.getName());
				
			}
			System.out.println("产品所属季度是否小于竞赛季度："+quarterFlag);
			modelAndView.addObject("quarter",quarter);
			modelAndView.addObject("currentQuarter",currentQuarter);
			modelAndView.addObject("quarterFlag", quarterFlag);
			modelAndView.addObject("companyProduct",companyProduct);
			modelAndView.setViewName("brand_ds2");	
			return modelAndView;
		}
		
		@RequestMapping(value="/UpdateCompanyProduct.do")
		public ModelAndView UpdateCompanyProduct(HttpServletRequest request){
			
			
			int company_id=(int) request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			String type=request.getParameter("type");
			String flag=request.getParameter("flag");
			
			if(flag.equals("insert")){
				System.out.println("添加产品");
				String cost=request.getParameter("productCost");
				
				CompanyProduct companyProduct=new CompanyProduct();
				companyProduct.setCompanyId(company_id);
				companyProduct.setQuarter(quarter);
				companyProduct.setType(type);
				companyProduct.setName(request.getParameter("Brand_name"));
				companyProduct.setDetail(request.getParameter("selectOption"));
				companyProduct.setCost(Integer.parseInt(cost));
				companyService.insertCompanyProduct(companyProduct);
				
				int id=companyProduct.getId();
				for(int i=1;i<=6;i++){
					companyService.insertCompanyProductDemandById(id,i);
				}
				for(int i=2;i<=6;i++){
					companyService.insertCompanyProductInventoryById(id,i);
				}
			}
			else{
				//更新操作
				System.out.println("更新产品");
				int productId=Integer.parseInt(request.getParameter("productId"));
				System.out.println("更新产品Id："+productId);
				CompanyProduct companyProduct=new CompanyProduct();	
				String cost=request.getParameter("productCost");
				companyProduct.setId(productId);
				companyProduct.setType(type);
				companyProduct.setName(request.getParameter("Brand_name"));
				companyProduct.setDetail(request.getParameter("selectOption"));
				companyProduct.setCost(Integer.parseInt(cost));
				companyService.updateCompanyProduct(companyProduct);
			}
			
			ModelAndView modelAndView = CompanyProduct(request,quarter);
			return modelAndView;
		}

		
		/*@MethodLog(description="查看现金流表操作")
		@RequestMapping(value="/showCashFlow.do ")
		public ModelAndView showCashFlow(HttpServletRequest request) throws Exception{
			System.out.println("查看第一季度现金流表");
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=1;
			//研发
			List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, quarter);
			int length=companyProducts.size();
			companyService.updateCashFlowYanfa((float)(length*60000), company_id, quarter);
			//销售中心
			CompanyMarket companyMarketPhy=companyService.selectPhyCompanyMarket(company_id, quarter);
			String Phy=companyMarketPhy.getMarketId();
			String[] PhyId=Phy.split(",");
			int PhyCost=0;
			for(int i=0;i<PhyId.length;i++){
				int id=Integer.parseInt(PhyId[i]);
				PhyCost+=companyService.selectOpenByMarketId(id);
			}
			companyService.updateCashFlowPhyMarket(PhyCost, company_id, quarter);
			
			CompanyMarket companyMarketWeb=companyService.selectWebCompanyMarket(company_id, quarter);
			String Web=companyMarketWeb.getMarketId();
			String[] WebId=Web.split(",");
			int WebCost=0;
			for(int i=0;i<WebId.length;i++){
				int id=Integer.parseInt(WebId[i]);
				WebCost+=companyService.selectWebOpenByMarketId(id);
			}
			companyService.updateCashFlowWebMarket(WebCost, company_id, quarter);
			//工厂
			int capacity=companyService.selectCapacity(company_id, quarter);
			int invest=companyService.selectInvestByCapacity(capacity);
			companyService.updateCashFlowCapacity(invest, company_id, quarter);
			//存款以及利息
			int cunru=companyService.selectCunru(company_id, quarter);
			companyService.updateCashFlowCunkuanPay(cunru, company_id, quarter);
			DecimalFormat df=new DecimalFormat("#.00");
			float lixi=Float.parseFloat(df.format(cunru*0.015));
			companyService.updateCashFlowLixi(lixi, company_id, quarter);
			
			List<CashFlow> list=companyService.showCashFlow(company_id, quarter);
			ModelAndView modelAndView =  new ModelAndView();
		    modelAndView.addObject("cashFlowList", list);
			modelAndView.setViewName("cashFlow");	
			return modelAndView;
		}*/
		// 运行产能
		@MethodLog(description = "查看运行产能操作")
		@RequestMapping(value = "/showOperationCapacity.do")
		public ModelAndView showOperationCapacity(HttpServletRequest request) {
			int companyIdInt = (int) request.getSession().getAttribute("companyId");
			int quarter = Integer.parseInt(request.getParameter("quarter"));
			
			List<CompanyCapacity> companyCapacityList1 = companyService.showCapacityInfo1(companyIdInt, quarter-1);
			List<OperationCapacity> operationCapacityList = companyService.selectOperationCapacity(companyIdInt, quarter);
			List<WorkersSalary> workersSalaryList = companyService.selectCompanyWorkersSalary(companyIdInt, quarter);
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("quarter", quarter);
			modelAndView.addObject("operationCapacityList", operationCapacityList);
			modelAndView.addObject("companyCapacityList1", companyCapacityList1);
			modelAndView.addObject("workersSalaryList", workersSalaryList);
			modelAndView.setViewName("operationCapacity");
			return modelAndView;
		}

		@MethodLog(description = "修改运行产能")
		@RequestMapping(value = "/showOperationCapacity1.do")
		public ModelAndView showOperationCapacity1(HttpServletRequest request) {
			int companyIdInt = (int) request.getSession().getAttribute("companyId");
			
			int quarter=Integer.parseInt(request.getParameter("quarter"));

			List<OperationCapacity> operationCapacityList = companyService.selectOperationCapacity(companyIdInt, quarter);

			String operateCapacity = request.getParameter("operateCapacity");
			String workerProductivity = request.getParameter("workerProductivity");

			Integer operateCapacityInt = Integer.parseInt(operateCapacity);
			Integer workerProductivityInt = Integer.parseInt(workerProductivity);

			if (operationCapacityList.size() == 0) {
				companyService.insertOperationCapacity(companyIdInt, quarter, operateCapacityInt, workerProductivityInt);
			} else {
				companyService.updateOperationCapacity(companyIdInt, quarter, operateCapacityInt, workerProductivityInt);
			}
			ModelAndView mv = showOperationCapacity(request);
			return mv;
		}
		
		@MethodLog(description = "查看竞争力")
		@RequestMapping(value = "/showCompetitivePower.do")
		public ModelAndView showCompetitivePower(HttpServletRequest request) {
			int companyId = (int) request.getSession().getAttribute("companyId");
			
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			// 根据当前公司id找到所在竞赛编号
			Competition competition = competitionService.findCompetitionByCompanyId(companyId);
			// 根据竞赛编号找到所有的公司
			List<Company> company = companyService.showCompanyByCompetitionId(competition.getId());
			// 创建集合类
			List<CompetitivePowerVo> CPVoList = new ArrayList<>();
			// 新建vo类
			for (Company comp : company) {
				List<OperationCapacity> OC = new ArrayList<>();
				OC = companyService.selectOperationCapacity(comp.getId(), quarter-1);
				List<CompanyCapacity> CC = new ArrayList<>();
				CC = companyService.showCapacityInfo1(comp.getId(), quarter-2);
				CompetitivePowerVo CPV = new CompetitivePowerVo();
				CPV.setCompany(comp);
				CPV.setCapacityNow(CC.get(0).getCapacityNow());
				CPV.setCapacityAdd(CC.get(0).getCapacityAdd());
				CPV.setOperateCapacity(OC.get(0).getOperateCapacity());
				CPVoList.add(CPV);

			}
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("CPVoList", CPVoList);
			modelAndView.setViewName("competitivePower");
			return modelAndView;

		}
		
		// 库存控制
		@MethodLog(description = "查看库存控制")
		@RequestMapping(value = "/showInventoryControl.do")
		public ModelAndView showInventoryControl(HttpServletRequest request) {
			int companyId = (int) request.getSession().getAttribute("companyId");
			
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			List<CompanyProductVo2> inventoryControl = companyService.selectInventoryControl(companyId, quarter);
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("quarter", quarter);
			modelAndView.addObject("inventoryControl", inventoryControl);
			
			modelAndView.setViewName("inventoryControl");
			return modelAndView;
		}
		
		//修改库存控制
		
		@MethodLog(description = "修改库存控制")
		@RequestMapping(value = "/updateInventoryControl.do")
		public ModelAndView updateInventoryControl(HttpServletRequest request,CompanyProductVo2List companyProductVo2List) {
			
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			
			for(CompanyProductVo2 companyProductVo2:companyProductVo2List.getCompanyProductVo2List()){
				System.out.println("输出 产品库存:"+ companyProductVo2.getId()+companyProductVo2.getInventory());
				int productId=companyProductVo2.getId();
				int inventory=companyProductVo2.getInventory();
				companyService.updateCompanyProductInventory(productId,inventory,quarter);
			}
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("quarter", quarter);	
			modelAndView.setViewName("inventoryControl");
			return showInventoryControl(request);
		}
		
		

		@MethodLog(description = "查看上季度结果")
		@RequestMapping(value = "/showQuarterResult.do")
		public ModelAndView showQuarterResult(HttpServletRequest request) {
			int companyId = (int) request.getSession().getAttribute("companyId");
			int quarter = Integer.parseInt(request.getParameter("quarter"))-1;
			List<OperationCapacity> operationCapacityList = companyService.selectOperationCapacity(companyId, quarter);
	        List<CompanyInvestment> companyInvestmentList =companyService.selectCompanyInvestment(companyId, quarter);
			System.out.println("size"+companyInvestmentList.get(0).getWorkerEfficiency());
	        
	        List<CompanyProduct> companyProducts = companyService.selectCompanyProductByCompanyIdQuarter(companyId,quarter);
		    List<StockLevelVo> SLVoList = new ArrayList<>();
			for (CompanyProduct compro : companyProducts) {
				List<ProductMarketShare> PMS = new ArrayList<>();
				PMS = companyService.selectProductMarketShare(compro.getId(),quarter);
				StockLevelVo SLV = new StockLevelVo();
				SLV.setCompanyProducts(compro);
				SLV.setNeed(PMS.get(0).getNeed());
				SLV.setSale(PMS.get(0).getSale());
				SLV.setStockoun(PMS.get(0).getStockoun());
				SLV.setStock(PMS.get(0).getStock());
				
				
				SLVoList.add(SLV);

			}
			

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("SLVoList", SLVoList);
			modelAndView.addObject("operationCapacityList", operationCapacityList);
			modelAndView.addObject("companyInvestmentList", companyInvestmentList);
			
			modelAndView.setViewName("quarterResult");
			return modelAndView;

		}
		
		@MethodLog(description = "无用库存")
		@RequestMapping(value = "/showUselessInventory.do")
		public ModelAndView showUselessInventory(HttpServletRequest request) {
			int companyId = (int) request.getSession().getAttribute("companyId");
			int quarter = Integer.parseInt(request.getParameter("quarter"));
			List<CompanyInvestment> companyInvestmentList = companyService.selectCompanyInvestment(companyId, quarter-1);

			List<CompanyProduct> companyProducts = companyService.selectCompanyProductByCompanyIdQuarter(companyId,quarter);
			List<StockLevelVo> SLVoList = new ArrayList<>();
			for (CompanyProduct compro : companyProducts) {
				List<ProductMarketShare> PMS = new ArrayList<>();
				PMS = companyService.selectProductMarketShare(compro.getId(),quarter-1);
				StockLevelVo SLV = new StockLevelVo();
				SLV.setCompanyProducts(compro);
				SLV.setStock(PMS.get(0).getStock());
				SLV.setSale(PMS.get(0).getSale());
				SLVoList.add(SLV);

			}

			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("SLVoList", SLVoList);
			modelAndView.addObject("companyInvestmentList", companyInvestmentList);

			modelAndView.setViewName("uselessInventory");
			return modelAndView;
		}
		
		
		/*@MethodLog(description = "修改库存控制")
		@RequestMapping(value = "/showInventoryControl1.do")
		public ModelAndView showInventoryControl1(HttpServletRequest request) {
			String[] ids = request.getParameterValues("ids");
			System.out.println("ids：" + ids);
			String[] max = request.getParameterValues("inventory_max_two");
			System.out.println("max:" + max);
			for (int i = 0; i < ids.length; i++) {
				Integer id = Integer.parseInt(ids[i]);
				Integer inventoryMaxt = Integer.parseInt(max[i]);
				CompanyProduct companyProduct = new CompanyProduct();
				companyProduct.setId(id);
				companyProduct.setInventoryMaxTwo(inventoryMaxt);
				companyService.updateInventoryControl(companyProduct);
			}
			ModelAndView mv = showInventoryControl(request);
			return mv;
		
		}*/
		
		//雇佣销售人员  
		@RequestMapping(value="/hireSalePeople.do")
		public ModelAndView hireSalePeople(HttpServletRequest request){
			int companyId = (int) request.getSession().getAttribute("companyId");
			int currentQuarter=Integer.parseInt(request.getParameter("quarter"));
			int quarter=currentQuarter;
			
			IdQuarter idQuarter=new IdQuarter();
			idQuarter.setId(companyId);
			idQuarter.setQuarter(quarter);
			
			//返回一个用逗号分隔得字符串
			CompanyMarket companyMarket=teacherService.findCompanyPhyMarketByIdQuarter(idQuarter);
			
			String[] marketString=companyMarket.getMarketId().split(",");
			List<HirePeopleVo> hirePeopleListVo=new ArrayList<HirePeopleVo>();
			HirePeopleVo hirePeopleVo=null;
			int totalPeople=0;			
			
			
			for(int i=0;i<marketString.length;i++){
				int marketInt=Integer.parseInt(marketString[i]);
				System.out.println("地区代码："+marketInt);
				
				hirePeopleVo=companyService.selectHirePeople(companyId,marketInt,quarter);
				System.out.println("城市的名字："+hirePeopleVo.getCity());
				System.out.println("销售人员："+hirePeopleVo.getHirePeople().getSaleman());
				if(hirePeopleVo.getHirePeople().getSaleman()==null||hirePeopleVo.getHirePeople().getSaleman().equals("")){
					hirePeopleVo.getHirePeople().setSaleman(0);
				}
				if(hirePeopleVo.getHirePeople().getAfterSale()==null||hirePeopleVo.getHirePeople().getAfterSale().equals("")){
					hirePeopleVo.getHirePeople().setAfterSale(0);
				}
				totalPeople=totalPeople+hirePeopleVo.getHirePeople().getSaleman()+hirePeopleVo.getHirePeople().getAfterSale();
				hirePeopleListVo.add(hirePeopleVo);
			}
			
			//根据公司id 和季度 查找 sale_salary 表中的 员工工资
			
			SalesSalary salesSalary=companyService.findCompanySalesSalary(companyId, currentQuarter);
			
			if(salesSalary==null){
				salesSalary=new SalesSalary();
				salesSalary.setSalaryTotal(0);
			}
			ModelAndView modelAndView =  new ModelAndView();
			modelAndView.addObject("totalPeople",totalPeople);
			modelAndView.addObject("salesSalary",salesSalary);
			modelAndView.addObject("hirePeopleListVo",hirePeopleListVo);
			modelAndView.setViewName("hirePeople");	
			return modelAndView;
			
		}
		
		@RequestMapping(value="/updateHirePeople.do")
		public ModelAndView updateHirePeople(HttpServletRequest request,HirePeopleList hirePeopleList){
			
			for(HirePeople hirePeople:hirePeopleList.getHirePeopleList()){
				
				System.out.println("提交后售后人员："+hirePeople.getAfterSale());
				System.out.println("提交后 id:"+hirePeople.getId());
				companyService.updateHirePeopleById(hirePeople);
			}
			return hireSalePeople(request);	
		}
		
		
		//雇佣网络销售人员
		  
		@RequestMapping(value="/hireSalePeopleOnline.do")
		public ModelAndView hireSalePeopleOnline(HttpServletRequest request){
			int companyId = (int) request.getSession().getAttribute("companyId");
			int currentQuarter=Integer.parseInt(request.getParameter("quarter"));
			int quarter=currentQuarter;
			
			IdQuarter idQuarter=new IdQuarter();
			idQuarter.setId(companyId);
			idQuarter.setQuarter(quarter);
			
			//返回一个用逗号分隔得字符串
			CompanyMarket companyMarket=teacherService.findCompanyNetMarketByIdQuarter(idQuarter);
			
			String[] marketString=companyMarket.getMarketId().split(",");
			List<HirePeopleOnlineVo> hirePeopleOnlineVoList=new ArrayList<HirePeopleOnlineVo>();
			HirePeopleOnlineVo hirePeopleOnlineVo=null;
			int totalPeople=0;			
			
			
			for(int i=0;i<marketString.length;i++){
				int marketInt=Integer.parseInt(marketString[i]);
				System.out.println("地区代码："+marketInt);
				
				hirePeopleOnlineVo=companyService.selectHirePeopleOnline(companyId,marketInt,quarter);
				System.out.println("城市的名字："+hirePeopleOnlineVo.getCity());
				System.out.println("销售人员："+hirePeopleOnlineVo.getHirePeopleOnline().getSaleman());
				totalPeople=totalPeople+hirePeopleOnlineVo.getHirePeopleOnline().getSaleman()+hirePeopleOnlineVo.getHirePeopleOnline().getAfterSale();
				
				hirePeopleOnlineVoList.add(hirePeopleOnlineVo);
			}
			
			//根据公司id 和季度 查找 sale_salary 表中的 员工工资
			
			SalesSalary salesSalary=companyService.findCompanySalesSalary(companyId, currentQuarter);
			
			System.out.println("员工工资："+salesSalary.getSalaryTotal());
			
			ModelAndView modelAndView =  new ModelAndView();
			modelAndView.addObject("totalPeople",totalPeople);
			modelAndView.addObject("salesSalary",salesSalary);
			modelAndView.addObject("hirePeopleOnlineVoList",hirePeopleOnlineVoList);
			modelAndView.setViewName("hirePeopleOnline");	
			return modelAndView;
			
		}
		
		@RequestMapping(value="/updateHirePeopleOnline.do")
		public ModelAndView updateHirePeopleOnline(HttpServletRequest request,HirePeopleOnlineList hirePeopleOnlineList){
			
			for(HirePeopleOnline hirePeopleOnline:hirePeopleOnlineList.getHirePeopleOnlineList()){
				
				System.out.println("提交后售后人员："+hirePeopleOnline.getAfterSale());
				System.out.println("提交后 id:"+hirePeopleOnline.getId());
				if(hirePeopleOnline.getAfterSale()==null||hirePeopleOnline.getAfterSale().equals("")){
					hirePeopleOnline.setAfterSale(0);
				}
				if(hirePeopleOnline.getSaleman()==null||hirePeopleOnline.getSaleman().equals("")){
					hirePeopleOnline.setSaleman(0);
				}
				
				
				companyService.updateHirePeopleOnlineById(hirePeopleOnline);
			}
			return hireSalePeopleOnline(request);	
		}
		
		
		
		
	//2017-11-1	 财务

		@MethodLog(description="查看利润表操作")
		@RequestMapping(value="/showIncomeStatement.do ")
		public ModelAndView showIncomeStatement(HttpServletRequest request) throws Exception{
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			CashFlow cashFlow=companyService.selectCashFlow(company_id, quarter);
			//收入
			float income=cashFlow.getXiaoshouGet();
			companyService.updateIncomeShouRu((int)income, company_id, quarter);
			//利息
			float lixi=cashFlow.getLixiGet();
			companyService.updateIncomStatementLixi(lixi, company_id, quarter);
			//营业成本(销货成本)
			float yingyeCost=cashFlow.getShengchanPay();
			companyService.updateIncomeYingYe((int)yingyeCost, company_id, quarter);
			//邮件返款
			float youji_sum=cashFlow.getFankuanPay();
			companyService.updateIncomeYouJi((int)youji_sum, company_id, quarter);
			//研发
			float yanfa=cashFlow.getYanfaPay();
			companyService.updateIncomeStatementYanfa(yanfa, company_id, quarter);
			//广告
			float guanggao=cashFlow.getGuanggaoPay();
			companyService.updateIncomeGuangGao((int)guanggao, company_id, quarter);
			//销售人员费用
			float saler=cashFlow.getSalerPay();
			companyService.updateIncomeSaler((int)saler, company_id, quarter);
			//实体网络
			float PhyCost=cashFlow.getSalescenterPay();
			companyService.updateIncomeStatementPhyMarket(PhyCost, company_id, quarter);
			float WebCost=cashFlow.getSalescenterWebPay();
			companyService.updateIncomeStatementWebMarket(WebCost, company_id, quarter);
			//调研
			float diaoyan=cashFlow.getDiaoyanPay();
			companyService.updateIncomeDiaoYan((int)diaoyan, company_id, quarter);
			//货运
			float huoyun=cashFlow.getHuoyunPay();
			companyService.updateIncomeHuoYun((int)huoyun, company_id, quarter);
			//库存费用
			float kucun=cashFlow.getKucunPay();
			companyService.updateIncomeKuCun((int)kucun, company_id, quarter);
			
			List<IncomeStatement> list=companyService.showIncomeStatement(company_id, 1);
			list.addAll(companyService.showIncomeStatement(company_id, 2));
			list.addAll(companyService.showIncomeStatement(company_id, 3));
			ModelAndView modelAndView =  new ModelAndView();
			modelAndView.addObject("incomeStatementList", list);
			modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("incomeStatement");
			return modelAndView;
		}
	@MethodLog(description="查看资产负债表操作")
		@RequestMapping(value="/showBalanceSheet.do ")
		public ModelAndView showBalanceSheet(HttpServletRequest request) throws Exception{
			int company_id = (int) request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			ModelAndView md=showCashFlow(request,String.valueOf(quarter));
			CashFlow cashFlow=companyService.selectCashFlow(company_id, quarter);
			//股本
			if(quarter==1){
				companyService.updateBalanceSheetGuBen(2000000, company_id, quarter);
			}else if(quarter==2){
				companyService.updateBalanceSheetGuBen(3000000, company_id, quarter);
			}else if(quarter==3){
				companyService.updateBalanceSheetGuBen(4000000, company_id, quarter);
			}
			//三个月存款
			int cunru=companyService.selectCunru(company_id, quarter);
			int tiqu=companyService.selectTiQu(company_id, quarter);
			int cunkuanLast=companyService.selectCunKuanLast(company_id, quarter);
			int cunkuan=cunru-tiqu+cunkuanLast;
			companyService.updateBalanceSheetCunKuan(cunkuan, company_id, quarter);
			//存货
			int cunhuo=(int)(cashFlow.getKucunPay()*10);
			companyService.updateBalanceSheetCunHuo(cunhuo, company_id, quarter);
			//固定资产
			int invest1=0;
			int invest2=0;
			int invest3=0;
			CompanyCapacity companyCapacity1=companyService.showCapacity(company_id, 1);
			if(companyCapacity1!=null){
				int capacity1=companyCapacity1.getCapacityAdd();
				invest1=companyService.selectInvestByCapacity(capacity1);
			}
			CompanyCapacity companyCapacity2=companyService.showCapacity(company_id, 2);
			if(companyCapacity2!=null){
				int capacity2=companyCapacity2.getCapacityAdd();
				invest2=companyService.selectInvestByCapacity(capacity2);
			}
			CompanyCapacity companyCapacity3=companyService.showCapacity(company_id, 3);
			if(companyCapacity3!=null){
				int capacity3=companyCapacity3.getCapacityAdd();
				invest3=companyService.selectInvestByCapacity(capacity3);
			}
			if(quarter==1){
				companyService.updateBalanceSheetZiChan(invest1, company_id, quarter);
			}else if(quarter==2){
				companyService.updateBalanceSheetZiChan(invest1+invest2, company_id, quarter);
			}else if(quarter==3){
				companyService.updateBalanceSheetZiChan(invest1+invest2+invest3, company_id, quarter);
			}
			//货币和留存
			float xianjinGet=cashFlow.getXianJinGet();
			float xianjinPay=cashFlow.getXianJinPay();
			float lirun=xianjinGet-xianjinPay;
			float gongchang=cashFlow.getGongchangPay();
			float huobi=0;
			float liucun=0;
			if(quarter==1){
				huobi=2000000+lirun-gongchang-cunru+tiqu-cunhuo;
				liucun=lirun;
			}else{
				BalanceSheet balanceSheet=companyService.selectHuoBiLast(company_id, quarter-1);
				float huobiLast=balanceSheet.getHuobi();
				huobi=huobiLast+1000000+lirun-gongchang-cunru+tiqu-cunhuo-(float)(cunkuanLast*1.5/100);
				float liucunLast=balanceSheet.getLiucun();
				liucun=liucunLast+lirun;
			}
			companyService.updateBalanceSheetHuoBi(huobi, company_id, quarter);
			companyService.updateBalanceSheetLiuCun(liucun, company_id, quarter);
			
			
			List<BalanceSheet> list=companyService.showBalanceSheet(company_id,1);
			list.addAll(companyService.showBalanceSheet(company_id,2));
			list.addAll(companyService.showBalanceSheet(company_id,3));
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("assertSheetList", list);
			modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("assertSheet");
			return modelAndView;
		}
	
	@MethodLog(description="查看内部持股操作")
	@RequestMapping(value="/showShareHold.do ")
	public ModelAndView showShareHold(HttpServletRequest request) throws Exception{
		int company_id=(int)request.getSession().getAttribute("companyId");
		int quarter=Integer.parseInt(request.getParameter("quarter"));
		
		ModelAndView modelAndView=new ModelAndView();
		if(quarter==1){
			List<CompanyStock> list=companyService.showCompanyStock(company_id, 1);
			modelAndView.addObject("shareHold",list);
			modelAndView.addObject("quarter",quarter);
		}else if(quarter==2){
			List<CompanyStock> list=companyService.showCompanyStock(company_id, 2);
			if(list.size()==0){
				companyService.insertStock(company_id, quarter,"普通股","经营团队", 5000, 200, 1000000);
			}
			List<CompanyStock> list1=companyService.showCompanyStock(company_id, 1);
			list1.addAll(companyService.showCompanyStock(company_id, 2));
			modelAndView.addObject("shareHold",list1);
			modelAndView.addObject("quarter",quarter);
		}else if(quarter==3){
			List<CompanyStock> list=companyService.showCompanyStock(company_id, 3);
			if(list.size()==0){
				companyService.insertStock(company_id, quarter,"普通股","经营团队", 5000, 200, 1000000);
			}
			List<CompanyStock> list1=companyService.showCompanyStock(company_id, 1);
			List<CompanyStock> list2=companyService.showCompanyStock(company_id, 2);
			list1.addAll(list2);
			list1.addAll(companyService.showCompanyStock(company_id, 3));
			modelAndView.addObject("shareHold",list1);
			modelAndView.addObject("quarter",quarter);
		}
		modelAndView.setViewName("shareHold");
		return modelAndView;
	
	}
	
	@MethodLog(description="查看定期存款操作")
		@RequestMapping(value = "/showFixedDeposite.do")
		public ModelAndView showFixedDeposit(HttpServletRequest request) {
			int companyIdInt = (int) request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			
			List<FixedDeposit> fixedDepositeList = companyService.selectFixedDeposite(companyIdInt,quarter );
			if(fixedDepositeList.size()==0){
				if(quarter!=1){
					FixedDeposit fixedDeposit=companyService.selectCunkuanLast(companyIdInt, quarter-1);
					float cunkuan=Float.parseFloat((String.valueOf(((fixedDeposit.getCunkuanLast()-fixedDeposit.getTiqu()+fixedDeposit.getCunru())*1.015))));
					System.out.println("上季度存款总额："+cunkuan);
					companyService.insertCunkuanLast(cunkuan, companyIdInt, quarter);
				}
			}
			List<FixedDeposit> fixedDepositeList1 = companyService.selectFixedDeposite(companyIdInt,quarter );
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("quarter", quarter);
	        modelAndView.addObject("fixedDepositeList", fixedDepositeList1);
			modelAndView.setViewName("fixedDeposite");
			return modelAndView;
		}


		@MethodLog(description="修改定期存款")
		@RequestMapping(value = "/showFixedDeposite1.do")
		public ModelAndView showFixedDeposit1(HttpServletRequest request) {
			int companyIdInt = (int) request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			
			List<FixedDeposit> fixedDepositeList = companyService.selectFixedDeposite(companyIdInt,quarter );
			
			String tiQu = request.getParameter("tiQu");
			String cunRu = request.getParameter("cunRu");
			float tiQuFloat = Float.parseFloat(tiQu);
			float cunRuFloat = Float.parseFloat(cunRu);
			
			if(fixedDepositeList.size()==0){
				companyService.insertFixedDeposite(companyIdInt, tiQuFloat, cunRuFloat,1,0.0f);}

			else{
				companyService.updateFixedDeposite(companyIdInt,tiQuFloat,cunRuFloat,quarter);
			}
			ModelAndView mv=showFixedDeposit(request);
			return mv;
		}
		@RequestMapping(value="/showCashFlowResult.do ")
		public ModelAndView showCashFlowResult(HttpServletRequest request,String quarter1) throws Exception{
			System.out.println("上一季度现金表");
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(quarter1);
			List<CashFlow> selectCashFlowResult = companyService.selectCashFlowResult(company_id, quarter);
			if(selectCashFlowResult.size()==0){
				companyService.insertCashFlowResult(company_id, quarter);
			}
			//更新固定费用到结果表
			CashFlow cashFlow=companyService.selectCashFlow(company_id, quarter);
			float lixi=cashFlow.getLixiGet();
			float yanfa=cashFlow.getYanfaPay();
			float guanggao=cashFlow.getGuanggaoPay();
			float saler=cashFlow.getSalerPay();
			float salesCenter=cashFlow.getSalescenterPay();
			float salesCenterWeb=cashFlow.getSalescenterWebPay();
			float diaoyan=cashFlow.getDiaoyanPay();
			float gongchang=cashFlow.getGongchangPay();
			float tiqu=cashFlow.getCunkuanRegularGet();
			float cunkuan=cashFlow.getCunkuanRegularPay();
			companyService.updateCashFlowResult(lixi, yanfa, guanggao, saler, salesCenter, salesCenterWeb, diaoyan, gongchang, tiqu, cunkuan, company_id, quarter);
			if(quarter!=1){
				List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, 1);
				for(int i=2;i<=quarter;i++){
					companyProducts.addAll(companyService.selectProductByCompanyIdAndQuarter(company_id, i));
				}
				//计算收入,邮寄，生产，货运，库存
				float incomeSum=0;
				float youjiSum=0;
				float shengchanSum=0;
				float kucunSum=0;
				float huoyunSum=0;
				for(int i=0;i<companyProducts.size();i++){
					int productId=companyProducts.get(i).getId();
					int productCost=companyService.selectProductCost(productId);
					int productPrice=0;
					int youji=0;
					ProductPrice price=companyService.showPrice(productId, quarter);
					if(price!=null){
						youji=price.getYouji();
						productPrice=price.getPrice();
					}
					int saleNum=companyService.selectSaleResult(productId, quarter);
					int kucunNum=companyService.selectKuCunResult(productId, quarter);
					int shengchanCost=companyProducts.get(i).getShengChanCost((saleNum+kucunNum), productCost);//生产成本
					
					shengchanSum+=shengchanCost*(saleNum+kucunNum);//总生产
					kucunSum+=shengchanCost*kucunNum/10;//库存费用
					incomeSum+=productPrice*saleNum;//总收入
					youjiSum+=youji*saleNum;//总邮寄费用
					huoyunSum+=saleNum*100;//货运
				}
				companyService.updateCashFlowResult2(incomeSum, youjiSum, shengchanSum, huoyunSum, kucunSum, company_id, quarter);
			}
			
			
			ModelAndView modelAndView =new ModelAndView();
			List<CashFlow> cashFlowResult=companyService.selectCashFlowResult(company_id, 1);
			cashFlowResult.addAll(companyService.selectCashFlowResult(company_id, 2));
			cashFlowResult.addAll(companyService.selectCashFlowResult(company_id, 3));
			modelAndView.addObject("cashFlowList", cashFlowResult);
			modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("cashFlow11");
			return modelAndView;
		}
		
		@RequestMapping(value="/showIncomeStatementResult.do ")
		public ModelAndView showIncomeStatementResult(HttpServletRequest request) throws Exception{
			System.out.println("上一季度利润");
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			ModelAndView modelAndView1=showCashFlowResult(request, String.valueOf(quarter));
			List<IncomeStatement> selectIncomeStatementResult = companyService.selectIncomeStatementResult(company_id, quarter);
			if(selectIncomeStatementResult.size()==0){
				companyService.insertIncomeResult(company_id, quarter);
			}
			List<CashFlow> cashFlow = companyService.selectCashFlowResult(company_id, quarter);
			float lixi=cashFlow.get(0).getLixiGet();
			float yanfa=cashFlow.get(0).getYanfaPay();
			float guanggao=cashFlow.get(0).getGuanggaoPay();
			float diaoyan=cashFlow.get(0).getDiaoyanPay();
			float saler=cashFlow.get(0).getSalerPay();
			float salesCenter=cashFlow.get(0).getSalescenterPay();
			float salesCenterWeb=cashFlow.get(0).getSalescenterWebPay();
			companyService.updateIncomeResult(lixi, yanfa, guanggao, saler, salesCenter, salesCenterWeb, diaoyan, company_id, quarter);
			
			float incomeSum=cashFlow.get(0).getXiaoshouGet();
			float yingyeSum=cashFlow.get(0).getShengchanPay();
			float youjiSum=cashFlow.get(0).getFankuanPay();
			float huoyunSum=cashFlow.get(0).getHuoyunPay();
			float kucunSum=cashFlow.get(0).getKucunPay();
			companyService.updateIncomeResult2(incomeSum, yingyeSum, youjiSum, huoyunSum, kucunSum, company_id, quarter);
			
			ModelAndView modelAndView =new ModelAndView();
			List<IncomeStatement> incomeResult=companyService.selectIncomeStatementResult(company_id, 1);
			incomeResult.addAll(companyService.selectIncomeStatementResult(company_id, 2));
			incomeResult.addAll(companyService.selectIncomeStatementResult(company_id, 3));
			modelAndView.addObject("incomeStatementList", incomeResult);
			modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("incomeStatement");	
			return modelAndView;
		}
		
		@RequestMapping(value="/showBalanceSheetResult.do ")
		public ModelAndView showBalanceSheetResult(HttpServletRequest request) throws Exception{
			System.out.println("上一季度资产负债");
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			ModelAndView modelAndView1=showCashFlowResult(request, String.valueOf(quarter));
			List<BalanceSheet> balanceResult=companyService.selectBalanceSheetResult(company_id, quarter);
			if(balanceResult.size()==0){
				companyService.insertBalanceResult(company_id, quarter);
			}
			BalanceSheet balanceSheet=companyService.selectBalanceSheet(company_id, quarter);
			float cunkuan=balanceSheet.getCunkuan();
			float zichan=balanceSheet.getZichan();
			float guben=balanceSheet.getGuben();
			//货币，留存，存货
			int cunru=companyService.selectCunru(company_id, quarter);
			int tiqu=companyService.selectTiQu(company_id, quarter);
			int cunkuanLast=companyService.selectCunKuanLast(company_id, quarter);
			List<CashFlow> cashFlow = companyService.selectCashFlowResult(company_id, quarter);
			int cunhuo=(int)(cashFlow.get(0).getKucunPay()*10);
			float xianjinGet=cashFlow.get(0).getXianJinGet();
			float xianjinPay=cashFlow.get(0).getXianJinPay();
			float lirun=xianjinGet-xianjinPay;
			float gongchang=cashFlow.get(0).getGongchangPay();
			float huobi=0;
			float liucun=0; 
			if(quarter==1){
				huobi=2000000+lirun-gongchang-cunru+tiqu-cunhuo;
				liucun=lirun;
			}else{
				BalanceSheet balanceSheet2=companyService.selectHuoBiLast(company_id, quarter-1);
				float huobiLast=balanceSheet2.getHuobi();
				huobi=huobiLast+1000000+lirun-gongchang-cunru+tiqu-cunhuo-(float)(cunkuanLast*1.5/100);
				float liucunLast=balanceSheet2.getLiucun();
				liucun=liucunLast+lirun;
			}
			companyService.updateBalanceSheetResult(cunkuan, zichan, guben, company_id, quarter);
			companyService.updateBalanceSheetResult2(huobi, liucun, cunhuo, company_id, quarter);
			
			ModelAndView modelAndView =new ModelAndView();
			List<BalanceSheet> balanceSheetResult1=companyService.selectBalanceSheetResult(company_id, 1);
			balanceSheetResult1.addAll(companyService.selectBalanceSheetResult(company_id, 2));
			balanceSheetResult1.addAll(companyService.selectBalanceSheetResult(company_id, 3));
			modelAndView.addObject("assertSheetList", balanceSheetResult1);
			modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("assertSheet");	
			return modelAndView;
		}
		
		
		@MethodLog(description="显示设计广告语")
		@RequestMapping("/designAdvertisement.do")
		public ModelAndView designAdvertisement(HttpServletRequest request,Integer productId) throws Exception {
			System.out.println("显示设计广告语。。。");
			
			ModelAndView modelAndView=new ModelAndView();
			//获取公司id和季度
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			if(productId!=null){
				List<CompanyAdvertise> companyAdvertises=companyService.selectCompanyAdvertiseByProductId(company_id, quarter, productId);
				modelAndView.addObject("companyAdvertises", companyAdvertises);
			}
			//查询产品名称
			List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, 1);
			for(int i=2;i<=quarter;i++){
				companyProducts.addAll(companyService.selectProductByCompanyIdAndQuarter(company_id, i));
			}
			modelAndView.addObject("companyProducts", companyProducts);
			//查询广告语信息
			List<AdvertiseInfo> advertiseInfos=staticInfoService.showAdvertiseInfo();
			modelAndView.addObject("advertiseInfos", advertiseInfos);
			modelAndView.addObject("quarter",quarter);
			modelAndView.addObject("productId", productId);
			modelAndView.setViewName("design_advertise");
			return modelAndView;
		}

		@MethodLog(description="更新产品广告语")
		@RequestMapping("/UpdateCompanyAdvertise.do")
		public ModelAndView UpdateCompanyAdvertise(HttpServletRequest request) throws Exception {
			System.out.println("更新产品广告语。。。");
			//获取相关数据
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			int productId=Integer.parseInt(request.getParameter("productId"));
			String productName=companyService.selectCompanyProduct(productId).getName();
			String checkedString=request.getParameter("checkedString");
			String advertiseName=request.getParameter("advertiseName");
			String method=request.getParameter("method");
			System.out.println("method"+method);
			if("query".equals(method)){
				
			}else{
				System.out.println("更新操作");
				//装载
				CompanyAdvertise companyAdvertise=new CompanyAdvertise();
				companyAdvertise.setCompanyId(company_id);
				companyAdvertise.setQuarter(quarter);
				companyAdvertise.setProductId(productId);
				companyAdvertise.setProductName(productName);
				companyAdvertise.setAdvertiseId(checkedString);
				companyAdvertise.setAdvertiseName(advertiseName);
				//判断添加或更新
				List<CompanyAdvertise> companyAdvertises=companyService.selectCompanyAdvertiseByProductId(company_id, quarter, productId);
				if(companyAdvertises.size()==0){
					//添加
					companyService.insertCompanyAdvertise(companyAdvertise);
				}else{
					companyService.updateCompanyAdvertise(companyAdvertise);
				}
				
			}
			ModelAndView modelAndView=designAdvertisement(request,productId);
			return modelAndView;
		}
		
		@MethodLog(description="紧急银行贷款")
		@RequestMapping(value="/showEmergencyLoan.do ")
		public ModelAndView showEmergencyLoan(HttpServletRequest request,int quarter) throws Exception{
			System.out.println("查看紧急银行贷款");
			int company_id=(int)request.getSession().getAttribute("companyId");
			ModelAndView modelAndView=new ModelAndView();
			BalanceSheet balanceSheet=companyService.selectBalanceSheet(company_id, quarter);
			float huobi=balanceSheet.getHuobi();
			modelAndView.addObject("huobi", huobi);
			int guben=companyService.selectGuBen(company_id, quarter);
			float totalDebt=(float)(guben*1.5);
			modelAndView.addObject("totalDebt", totalDebt);
			CompanyLoan companyLoan=companyService.selectCompanyLoan(company_id, quarter);
			if(companyLoan==null){
				if(quarter>4){
					CompanyLoan companyLoan1=companyService.selectCompanyLoan(company_id, quarter-1);
					float loanLast=Float.parseFloat((String.valueOf(((companyLoan1.getLoanLast()+companyLoan1.getGetNum()-companyLoan1.getReturnNum())*1.04))));
					System.out.println("上季度贷款总额："+loanLast);
					companyService.insertLoanLast(loanLast, company_id, quarter);
				}
			}
			CompanyLoan companyLoan2=companyService.selectCompanyLoan(company_id, quarter);
			modelAndView.addObject("companyLoan", companyLoan2);
			modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("emergencyLoan");	
			return modelAndView;
		}
		
		@RequestMapping(value="/showEmergencyLoan1.do ")
		public ModelAndView showEmergencyLoan1(HttpServletRequest request) throws Exception{
			System.out.println("操作紧急银行贷款");
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(request.getParameter("quarter"));
			float get = Float.parseFloat(request.getParameter("get"));
			float payBack = Float.parseFloat(request.getParameter("return"));
			CompanyLoan companyLoan=companyService.selectCompanyLoan(company_id, quarter);
			if(companyLoan==null){
				companyService.insertCompanyLoan(company_id, quarter, get, payBack);
			}else{
				companyService.updateCompanyLoan(company_id, quarter, get, payBack);
			}
			ModelAndView mv=showEmergencyLoan(request,quarter);
			mv.addObject("quarter", quarter);
			return mv;
		}

		public ModelAndView checkCashAmount(HttpServletRequest request,float expense,int quarter) throws Exception{
			/*若是返回NULL值，可用资金充足
			 * 若不是NULL值，说明资金不够，跳转至贷款页面
			*/
			ModelAndView modelAndView=showBalanceSheet(request);
			int company_id=(int)request.getSession().getAttribute("companyId");
			BalanceSheet balanceSheet=companyService.selectBalanceSheet(company_id, quarter);
			float huobi=balanceSheet.getHuobi();
			if((huobi-expense)<0){
				ModelAndView mv=showEmergencyLoan(request,quarter);
				mv.addObject("method", "redirect");
				mv.setViewName("emergencyLoan");
				return mv;
			}else{
				return null;
			}
		}
		
		//2017-11-15

		@MethodLog(description="查看现金流表操作")
		@RequestMapping(value="/showCashFlow.do ")
		public ModelAndView showCashFlow(HttpServletRequest request,String quarter1) throws Exception{
			int company_id=(int)request.getSession().getAttribute("companyId");
			int quarter=Integer.parseInt(quarter1);
			//找出该公司当季度所有产品
			List<CompanyProduct> companyProducts=companyService.selectProductByCompanyIdAndQuarter(company_id, 1);
			for(int i=2;i<=quarter;i++){
				companyProducts.addAll(companyService.selectProductByCompanyIdAndQuarter(company_id, i));
			}
			//收入
			int income=0;
			for(int i=0;i<companyProducts.size();i++){
				int productId=companyProducts.get(i).getId();
				int productPrice=0;
				ProductPrice price=companyService.showPrice(productId, quarter);
				if(price!=null){
					productPrice=price.getPrice();
				}
				if(quarter==1){
					break;
				}else {
					int demandNum=companyService.selectProductDemand(productId, quarter);
					income+=productPrice*demandNum;
				}
			}
			companyService.updateCashFlowShouRu(income, company_id, quarter);
			//收取利息以及存款
			int cunru=companyService.selectCunru(company_id, quarter);
			int tiqu=companyService.selectTiQu(company_id, quarter);
			int cunkuanLast=companyService.selectCunKuanLast(company_id, quarter);
			DecimalFormat df=new DecimalFormat("#.00");
			float lixi=Float.parseFloat(df.format((cunkuanLast+cunru-tiqu)*0.015));
			companyService.updateCashFlowCunkuanPay(cunru, company_id, quarter);
			companyService.updateCashFlowTiqu(tiqu, company_id, quarter);
			companyService.updateCashFlowLixi(lixi, company_id, quarter);
			//邮寄返款
			int youji_sum=0;
			for(int i=0;i<companyProducts.size();i++){
				int productId=companyProducts.get(i).getId();
				int youji=0;
				ProductPrice price=companyService.showPrice(productId, quarter);
				if(price!=null){
					youji=price.getYouji();
				}
				if(quarter==1){
					break;
				}else {
					int demandNum=companyService.selectProductDemand(productId, quarter);
					youji_sum+=youji*demandNum;
				}
			}
			companyService.updateCashFlowYouJi(youji_sum, company_id, quarter);
			//生产支出的现金和库存费用
			int shengchanCostSum=0;
			int kucunCostSum=0;
			for(int i=0;i<companyProducts.size();i++){
				int productId=companyProducts.get(i).getId();
				int productCost=companyService.selectProductCost(productId);
				int num=0;
				int kucunNum=0;
				if(quarter==1){
					break;
				}else{
					num=companyService.selectProductDemand(productId, quarter);
					kucunNum=companyService.selectProductKuCun(productId, quarter);
				}
				int shengchanCost=companyProducts.get(i).getShengChanCost(num+kucunNum, productCost);
				kucunCostSum+=shengchanCost*kucunNum;
				shengchanCostSum+=shengchanCost*(num+kucunNum);
			}
			companyService.updateCashFlowShengChan(shengchanCostSum, company_id, quarter);
			companyService.updateCashFlowKuCun(kucunCostSum/10, company_id, quarter);
			//研发
			companyService.updateCashFlowYanfa((float)(companyService.selectProductByCompanyIdAndQuarter(company_id, quarter).size()*60000), company_id, quarter);
			//广告
			int mediaCost=0;
			for(int i=0;i<companyProducts.size();i++){
				int productId=companyProducts.get(i).getId();
				List<CompanyMedia> companyMedias=companyService.selectProductMedia(productId, quarter);
				for(int j=0;j<companyMedias.size();j++){
					int mediaId=companyMedias.get(j).getMediaId();
					int num=companyMedias.get(j).getNum();
					int cost=companyService.selectMediaCost(mediaId);
					mediaCost+=num*cost;
				}
			}
			companyService.updateCashFlowMediaCost(mediaCost, company_id, quarter);
			//销售人员
			//销售人员的工资以及数量
			if(quarter!=1){
				
				IdQuarter idQuarter=new IdQuarter();
				idQuarter.setId(company_id);
				idQuarter.setQuarter(quarter);
				
				//返回一个用逗号分隔得字符串
				CompanyMarket companyMarket=teacherService.findCompanyPhyMarketByIdQuarter(idQuarter);
				
				String[] marketString=companyMarket.getMarketId().split(",");
				HirePeopleVo hirePeopleVo=null;
				int totalPeople=0;			
				
				
				for(int i=0;i<marketString.length;i++){
					int marketInt=Integer.parseInt(marketString[i]);
					hirePeopleVo=companyService.selectHirePeople(company_id,marketInt,quarter);
					totalPeople=hirePeopleVo.getHirePeople().getSaleman()+hirePeopleVo.getHirePeople().getAfterSale();
				}
				
				//根据公司id 和季度 查找 sale_salary 表中的 员工工资
				
				SalesSalary salesSalary=companyService.findCompanySalesSalary(company_id, quarter);
				
				System.out.println("员工工资："+salesSalary.getSalaryTotal());
				
				
				
				int totalCost=totalPeople*salesSalary.getSalaryTotal();
				
				System.out.println("2017-11-1 销售人员员工总工资："+totalCost);
				
				companyService.updateCashFlowSalerPay(totalCost, company_id, quarter);
			}
			//销售中心(实体加网络)
			int PhyCost=0;
			int WebCost=0;
			String Phy="";
			String Web="";
			if(quarter==1){
				CompanyMarket companyMarketPhy=companyService.selectPhyCompanyMarket(company_id, quarter);
				if(companyMarketPhy!=null){
					Phy=companyMarketPhy.getMarketId();
					String[] PhyId=Phy.split(",");
					for(int i=0;i<PhyId.length;i++){
						int id=Integer.parseInt(PhyId[i]);
						PhyCost+=companyService.selectOpenByMarketId(id);
					}
				}
				CompanyMarket companyMarketWeb=companyService.selectWebCompanyMarket(company_id, quarter);
				if(companyMarketWeb!=null){
					Web=companyMarketWeb.getMarketId();
					String[] WebId=Web.split(",");
					for(int i=0;i<WebId.length;i++){
						int id=Integer.parseInt(WebId[i]);
						WebCost+=companyService.selectWebOpenByMarketId(id);
					}
				}
			}else{
				//实体店
				CompanyMarket companyMarketPhy=companyService.selectPhyCompanyMarket(company_id, quarter-1);
				Phy=companyMarketPhy.getMarketId();
				String[] PhyId=Phy.split(",");
				CompanyMarket companyMarketPhy2=companyService.selectPhyCompanyMarket(company_id, quarter);
				if(companyMarketPhy2!=null){
					String Phy2=companyMarketPhy2.getMarketId();
					String[] PhyId2=Phy2.split(",");
					int flag;
					for(int i=0;i<PhyId2.length;i++){
						int id2=Integer.parseInt(PhyId2[i]);
						flag=0;
						for(int j=0;j<PhyId.length;j++){
							int id=Integer.parseInt(PhyId[j]);
							if(id2==id){
								PhyCost+=companyService.selectRent(id2);
								flag=1;
								break;
							}
						}
						if(flag==0){
							PhyCost+=companyService.selectOpenByMarketId(id2);
						}
					}
				}
				//网络店
				CompanyMarket companyMarketWeb=companyService.selectWebCompanyMarket(company_id, quarter-1);
				Web=companyMarketWeb.getMarketId();
				String[] WebId=Web.split(",");
				CompanyMarket companyMarketWeb2=companyService.selectWebCompanyMarket(company_id, quarter);
				if(companyMarketWeb2!=null){
					String Web2=companyMarketWeb2.getMarketId();
					String[] WebId2=Web2.split(",");
					int Webflag;
					for(int i=0;i<WebId2.length;i++){
						int id2=Integer.parseInt(WebId2[i]);
						Webflag=0;
						for(int j=0;j<WebId.length;j++){
							int id=Integer.parseInt(WebId[j]);
							if(id2==id){
								WebCost+=companyService.selectWebRent(id2);
								Webflag=1;
								break;
							}
						}
						if(Webflag==0){
							WebCost+=companyService.selectWebOpenByMarketId(id2);
						}
					}
				}
			}
			companyService.updateCashFlowPhyMarket(PhyCost, company_id, quarter);
			companyService.updateCashFlowWebMarket(WebCost, company_id, quarter);
			//调研费用
			CompanyReport companyReport=companyService.showReport(company_id, quarter);
			if(companyReport==null){
				companyService.updateCashFlowDiaoYan(0, company_id, quarter);
			}else if(companyReport.getBuyReport()==1){
				companyService.updateCashFlowDiaoYan(15000, company_id, quarter);
			}else{
				companyService.updateCashFlowDiaoYan(0, company_id, quarter);
			}
			//货运
			int demand_sum=0;
			for(int i=0;i<companyProducts.size();i++){
				int productId=companyProducts.get(i).getId();
				if(quarter==1){
					break;
				}else{
					int demandNum=companyService.selectProductDemand(productId, quarter);
					demand_sum+=demandNum;
				}
			}
			companyService.updateCashFlowHuoYun(demand_sum*100, company_id, quarter);
			//工厂
			int capacity=companyService.selectCapacity(company_id, quarter);
			int invest=companyService.selectInvestByCapacity(capacity);
			companyService.updateCashFlowCapacity(invest, company_id, quarter);
			
			ModelAndView modelAndView =  new ModelAndView();
			List<CashFlow> list1=companyService.showCashFlow(company_id, 1);
			list1.addAll(companyService.showCashFlow(company_id, 2));
			list1.addAll(companyService.showCashFlow(company_id, 3));
			modelAndView.addObject("cashFlowList", list1);
		    modelAndView.addObject("quarter", quarter);
			modelAndView.setViewName("cashFlow");
			return modelAndView;
		}
}
