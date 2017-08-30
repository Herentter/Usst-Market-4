package cn.usst.market.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.CompanyProduct;
import cn.usst.market.po.CompanyRule;
import cn.usst.market.po.CompanyRuleInfo;
import cn.usst.market.po.CompanyStrategy;
import cn.usst.market.po.Competition;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.KeyDecisionVo;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.Member;
import cn.usst.market.po.MemberDutyCustom;
import cn.usst.market.po.PersonalGoal;
import cn.usst.market.po.PersonalGoalCustom;
import cn.usst.market.po.PersonalGoalInfo;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.po.StrategyInfo;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.CompetitionService;
import cn.usst.market.service.MemberService;
import cn.usst.market.service.TeacherService;

@Controller
public class PolicyDecisionController {
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private MemberService memberService;
	
	//================================
	//接下来是当前季度决策
	@RequestMapping("/jumpPolicyDecision.do")
	public String jumpPolicyDecision(Model model,Integer id) throws Exception{
		
		Competition competition= competitionService.findCompetitionById(id);
		//List<Company> companyList= competitionService
		//通过形参中的model将model数据传到页面,相当于上面addObjeect
		model.addAttribute("competition", competition);
		
		//返回jsp页面，相当于modelAndView.setViewName
		return "jsp/policyDecision/policyDecision";	
	}

	//==============关键决策
	@RequestMapping("/policyDecision/keyDecision.do")
	public String keyDecision(Model model,Integer competitionId,Integer currentQuarter)throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		List<KeyDecisionVo> keyDecisionList= new ArrayList<KeyDecisionVo>();
		for(int i=0;i<companyList.size();i++){
			KeyDecisionVo keyDecision=new KeyDecisionVo();
			IdQuarter idQuarter=new IdQuarter();
			idQuarter.setId(companyList.get(i).getId());
			idQuarter.setQuarter(currentQuarter);
			//公司
			keyDecision.setCompany(companyList.get(i));
			
			//找目标细分市场，实用型--商旅型
			CompanyStrategy companyStrategy=teacherService.findCompanyGoalAndPolicy(idQuarter);
			keyDecision.setCompanyStrategy(companyStrategy);
			
			//找公司新品牌
			List<CompanyProduct> companyProductList=teacherService.findProductsByCompanyIdQuarter(idQuarter);
			keyDecision.setCompanyProductList(companyProductList);
			
			//销售渠道
			//实体市场
			CompanyMarket companyPhyMarket=teacherService.findCompanyPhyMarketByIdQuarter(idQuarter);
			List<MarketInfo> phyMarketList=new ArrayList<MarketInfo>();
			if(companyPhyMarket!=null){
				String marketPhyId=companyPhyMarket.getMarketId();
				if(marketPhyId!=null&& marketPhyId.length()>0){
					String[] marketPhyIdArr=marketPhyId.split(",");
					for(int j=0;j<marketPhyIdArr.length;j++){
						MarketInfo marketInfo=teacherService.findMarketInfoById(Integer.parseInt(marketPhyIdArr[j]));
						phyMarketList.add(marketInfo);
					}
				}
			}
			keyDecision.setPhyMarketList(phyMarketList);
			
			//网络市场
			CompanyMarket companyNetMarket=teacherService.findCompanyNetMarketByIdQuarter(idQuarter);
			List<MarketInfo> netMarketList=new ArrayList<MarketInfo>();
			if(companyNetMarket!=null){
				String marketNetId=companyNetMarket.getMarketId();
				if(marketNetId!=null&& marketNetId.length()>0){
					String[] marketNetIdArr=marketNetId.split(",");
					for(int j=0;j<marketNetIdArr.length;j++){
						MarketInfo marketInfo=teacherService.findMarketInfoById(Integer.parseInt(marketNetIdArr[j]));
						netMarketList.add(marketInfo);
					}
				}
			}
			keyDecision.setNetMarketList(netMarketList);
			
			//公司人数
			List<Member> memberList=memberService.showAllMemberByComapnyId(companyList.get(i).getId());
			int memberCount=memberList.size();
			keyDecision.setMemberCount(memberCount);
			
			//生产制造,下季度将增加的固定产能
			int addCapacity=teacherService.findAddCapacityByIdQuarter(idQuarter);
			keyDecision.setAddCapacity(addCapacity);
			int totalCapacity=teacherService.findTotalCapacityByIdQuarter(idQuarter);
			int fixedCapacity=totalCapacity-addCapacity;
			keyDecision.setFixedCapacity(fixedCapacity);
			
			
			keyDecisionList.add(keyDecision);
		}
		
		model.addAttribute("competition", competition);
		model.addAttribute("keyDecisionList", keyDecisionList);
		model.addAttribute("currentQuarter", currentQuarter);
		
		return "jsp/policyDecision/keyDecision";
		
	}
	
	
	
	//==============决策汇总
	@RequestMapping("/policyDecision/decisionSummary.do")
	public String decisionSummary(Model model,Integer competitionId,Integer currentQuarter)throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		
		return "jsp/policyDecision/decisionSummary";
		
	}
	//每个公司的决策汇总
	@RequestMapping("/policyDecision/companyDecisionSummary.do")
	public String companyDecisionSummary(Model model,Integer companyId,Integer currentQuarter)throws Exception{
		Company company= companyService.selectCompanyById(companyId);
		List<MemberDutyCustom> memberDutyList=teacherService.findMemberDutyList(companyId);
		IdQuarter idQuarter=new IdQuarter();
			idQuarter.setId(companyId);
			idQuarter.setQuarter(currentQuarter);
		CompanyStrategy companyStrategy=teacherService.findCompanyGoalAndPolicy(idQuarter);
		//查找已选则的策略
		List<StrategyInfo> strategyList=new ArrayList<StrategyInfo>();
		if(companyStrategy!=null){
			String strategyId=companyStrategy.getStrategyId();
			if(strategyId!=null&&strategyId.length()>0){
				String[] strategyArr= strategyId.split(",");
				for(int i=0;i<strategyArr.length;i++){
					StrategyInfo strategyInfo=teacherService.findStrategyById(Integer.parseInt(strategyArr[i]));
					strategyList.add(strategyInfo);
				}
			}
		}
		
		//查找团队规则
		CompanyRule companyRule=teacherService.findCompanyRule(idQuarter);
		List<CompanyRuleInfo> ruleInfoList=new ArrayList<CompanyRuleInfo>();
		if(companyRule!=null){
			String ruleInfoId=companyRule.getRuleId();
			if(ruleInfoId!=null&& ruleInfoId.length()>0){
				String[] ruleArr=ruleInfoId.split(",");
				for(int j=0;j<ruleArr.length;j++){
					CompanyRuleInfo companyRuleInfo=teacherService.findRuleInfoById(Integer.parseInt(ruleArr[j]));
					ruleInfoList.add(companyRuleInfo);
				}
			}
		}
		
		//查找个人目标
		List<Member> memberList=memberService.showAllMemberByComapnyId(companyId);
		List<PersonalGoalCustom> allPersonalGoalList=new ArrayList<PersonalGoalCustom>();
		for(int k=0;k<memberList.size();k++){
			int memberId=memberList.get(k).getId();
			PersonalGoal personalGoal=teacherService.findPersonalGoalByMemberId(memberId);
			if(personalGoal!=null){
				String goalId=personalGoal.getGoalId();
				List<PersonalGoalInfo> personalGoalList=new ArrayList<PersonalGoalInfo>();
				if(goalId!=null&&goalId.length()>0){
					String[] goalArr=goalId.split(",");
					for(int m=0;m<goalArr.length;m++){
						PersonalGoalInfo personalGoalInfo=teacherService.findPersonalGoalInfoById(Integer.parseInt(goalArr[m]));
						personalGoalList.add(personalGoalInfo);
					}
				}
				PersonalGoalCustom personalGoalCustom=new PersonalGoalCustom();
				personalGoalCustom.setMember(memberList.get(k));
				personalGoalCustom.setPersonalGoal(personalGoalList);
				allPersonalGoalList.add(personalGoalCustom);
			}
			
		}
		
		//查找公司生产的产品
		List<CompanyProduct> companyProductList=teacherService.findProductsByCompanyIdQuarter(idQuarter);
		model.addAttribute("companyProductList", companyProductList);
		List<ProductInfo> bibeiList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getBibei());
			bibeiList.add(bibei);
		}
		model.addAttribute("bibeiList", bibeiList);
		List<ProductInfo> yunyingList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getYunying());
			yunyingList.add(bibei);
		}
		model.addAttribute("yunyingList", yunyingList);
		List<ProductInfo> lanyaList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getLanya());
			lanyaList.add(bibei);
		}
		model.addAttribute("lanyaList", lanyaList);
		List<ProductInfo> pingmuList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getPingmu());
			pingmuList.add(bibei);
		}
		model.addAttribute("pingmuList", pingmuList);
		List<ProductInfo> chukongList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getChukong());
			chukongList.add(bibei);
		}
		model.addAttribute("chukongList", chukongList);
		List<ProductInfo> cpuList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getCpu());
			cpuList.add(bibei);
		}
		model.addAttribute("cpuList", cpuList);
		List<ProductInfo> jishenList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getJishen());
			jishenList.add(bibei);
		}
		model.addAttribute("jishenList", jishenList);
		List<ProductInfo> paizhaoList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getPaizhao());
			paizhaoList.add(bibei);
		}
		model.addAttribute("paizhaoList", paizhaoList);
		List<ProductInfo> texingList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getTexing());
			texingList.add(bibei);
		}
		model.addAttribute("texingList", texingList);
		List<ProductInfo> dianchiList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getDianchi());
			dianchiList.add(bibei);
		}
		model.addAttribute("dianchiList", dianchiList);
		List<ProductInfo> qitaList=new ArrayList<ProductInfo>();
		for(int n=0;n<companyProductList.size();n++){
			ProductInfo bibei=teacherService.findProductInfoById(companyProductList.get(n).getQita());
			qitaList.add(bibei);
		}
		model.addAttribute("qitaList", qitaList);
		
		//销售渠道，实体销售中心
		CompanyMarket companyPhyMarket=teacherService.findCompanyPhyMarketByIdQuarter(idQuarter);
		List<MarketInfo> phyMarketList=new ArrayList<MarketInfo>();
		int phyTotalPrice=0;
		if(companyPhyMarket!=null){
			String marketPhyId=companyPhyMarket.getMarketId();
			if(marketPhyId!=null&& marketPhyId.length()>0){
				String[] marketPhyIdArr=marketPhyId.split(",");
				for(int j=0;j<marketPhyIdArr.length;j++){
					MarketInfo marketInfo=teacherService.findMarketInfoById(Integer.parseInt(marketPhyIdArr[j]));
					phyTotalPrice+=marketInfo.getOpen();
					phyMarketList.add(marketInfo);
				}
			}
		}
		model.addAttribute("phyMarketList", phyMarketList);
		model.addAttribute("phyTotalPrice", phyTotalPrice);
		//网络销售中心
		CompanyMarket companyNetMarket=teacherService.findCompanyNetMarketByIdQuarter(idQuarter);
		List<MarketInfo> netMarketList=new ArrayList<MarketInfo>();
		int netTotalPrice=0;
		if(companyNetMarket!=null){
			String marketNetId=companyNetMarket.getMarketId();
			if(marketNetId!=null&& marketNetId.length()>0){
				String[] marketNetIdArr=marketNetId.split(",");
				for(int j=0;j<marketNetIdArr.length;j++){
					MarketInfo marketInfo=teacherService.findMarketInfoById(Integer.parseInt(marketNetIdArr[j]));
					netTotalPrice+=marketInfo.getWebOpen();
					netMarketList.add(marketInfo);
				}
			}
		}
		model.addAttribute("netMarketList", netMarketList);
		model.addAttribute("netTotalPrice", netTotalPrice);
		
		//生产制造-固定产能
		//生产制造,下季度将增加的固定产能
		int addCapacity=teacherService.findAddCapacityByIdQuarter(idQuarter);
		int nextTotalCapacity=teacherService.findTotalCapacityByIdQuarter(idQuarter);
		int currentCapacity=nextTotalCapacity-addCapacity;
		
		model.addAttribute("addCapacity", addCapacity);
		model.addAttribute("nextTotalCapacity", nextTotalCapacity);
		model.addAttribute("currentCapacity", currentCapacity);
		
		
		
		//================
		model.addAttribute("company", company);
		model.addAttribute("memberDutyList", memberDutyList);
		model.addAttribute("companyStrategy", companyStrategy);
		model.addAttribute("strategyList", strategyList);
		model.addAttribute("companyRule", companyRule);
		model.addAttribute("ruleInfoList", ruleInfoList);
		//model.addAttribute("memberList", memberList);
		model.addAttribute("allPersonalGoalList", allPersonalGoalList);
		
		return "jsp/policyDecision/companyDecisionSummary";
	}
	
	
	
	@RequestMapping("/policyDecision/errorAndWarn.do")
	public String errorAndWarn(Model model,Integer competitionId,Integer currentQuarter)throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		model.addAttribute("companyList", companyList);
		
		return "jsp/policyDecision/errorAndWarn";
	}
	
	//测试返回学生端界面
	@RequestMapping(value="/policyDecision/strategyInfo.do")
	public ModelAndView strategyInfo(HttpServletRequest request,Integer currentQuarter,Integer companyId){
		
		//查询title
		List<String> titleList=companyService.countStrategyTitle();
		//根据title遍历存入map
		Map<String,List<StrategyInfo>> result=new HashMap<String,List<StrategyInfo>>();
		for(int i = 0;i < titleList.size(); i ++){
            System.out.println(titleList.get(i));
            result.put(titleList.get(i), companyService.showStrategyInfoBytitle(titleList.get(i)));
        }
		
		//查询公司id和季度
		int company_id=companyId;
		int quarter=currentQuarter;
		
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
}
