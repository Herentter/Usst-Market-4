package cn.usst.market.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.usst.market.annotation.MethodLog;
import cn.usst.market.po.BalanceScore;
import cn.usst.market.po.BalanceScoreAvgData;
import cn.usst.market.po.BalanceScoreMaxData;
import cn.usst.market.po.BalanceScoreMinData;
import cn.usst.market.po.BalanceScoreVo;
import cn.usst.market.po.BalanceSheet;
import cn.usst.market.po.CashFlow;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyInvestment;
import cn.usst.market.po.CompanyMarketShare;
import cn.usst.market.po.CompanyMedia;
import cn.usst.market.po.CompanyMediaVo;
import cn.usst.market.po.Competition;
import cn.usst.market.po.HirePeople;
import cn.usst.market.po.HirePeopleOnline;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.IncomeStatement;
import cn.usst.market.po.LearnTime;
import cn.usst.market.po.LearnTimeVo;
import cn.usst.market.po.SalesSalary;
import cn.usst.market.service.BalanceScoreService;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.CompetitionResultService;
import cn.usst.market.service.CompetitionService;
import cn.usst.market.service.PerformanceReportService;

@Controller
public class BalanceScoreController {
	@Autowired
	private BalanceScoreService balanceScoreService;
	
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private CompetitionResultService competitionResultService;
	
	@Autowired
	private PerformanceReportService performanceReportService;
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping("/loadBalanceScore.do")
	public String loadBalanceScore(HttpServletRequest request, String companyId, String competitionId){
		BalanceScore balanceScore = new BalanceScore();
		int quarter = (int) request.getSession().getAttribute("currentQuarter") - 1;
		balanceScore.setCompanyId(Integer.parseInt(companyId));
		balanceScore.setQuarter(quarter);
		BalanceScoreMinData balanceScoreMinData = new BalanceScoreMinData();
		balanceScoreMinData = balanceScoreService.getMinData(Integer.parseInt(competitionId), quarter);
		BalanceScoreMaxData balanceScoreMaxData = new BalanceScoreMaxData();
		balanceScoreMaxData = balanceScoreService.getMaxData(Integer.parseInt(competitionId), quarter);
		BalanceScoreAvgData balanceScoreAvgData = new BalanceScoreAvgData();
		balanceScoreAvgData = balanceScoreService.getAvgData(Integer.parseInt(competitionId), quarter);
		BalanceScoreVo balanceScoreVo = balanceScoreService.loadBalanceScore(balanceScore); 
		balanceScoreVo.setBalanceScoreMinData(balanceScoreMinData);
		balanceScoreVo.setBalanceScoreMaxData(balanceScoreMaxData);
		balanceScoreVo.setBalanceScoreAvgData(balanceScoreAvgData);
		request.setAttribute("balanceScoreVo", balanceScoreVo);
		return "balance_score";
	}
	
	@RequestMapping("/loadBalanceScoreReport.do")
	public String loadBalanceScoreReport(HttpServletRequest request){
		int companyId = (int) request.getSession().getAttribute("companyId");
		int quarter = Integer.parseInt(request.getParameter("quarter")) - 1;
		Competition competition = competitionService.findCompetitionByCompanyId(companyId);
		BalanceScore balanceScore = new BalanceScore();
		balanceScore.setCompanyId(companyId);
//		balanceScore.setQuarter(competition.getCurrentQuarter() - 1);
		balanceScore.setQuarter(quarter);
		BalanceScoreMinData balanceScoreMinData = new BalanceScoreMinData();
		balanceScoreMinData = balanceScoreService.getMinData(competition.getId(), quarter);
		BalanceScoreMaxData balanceScoreMaxData = new BalanceScoreMaxData();
		balanceScoreMaxData = balanceScoreService.getMaxData(competition.getId(), quarter);
		BalanceScoreAvgData balanceScoreAvgData = new BalanceScoreAvgData();
		balanceScoreAvgData = balanceScoreService.getAvgData(competition.getId(), quarter);
		BalanceScoreVo balanceScoreVo = balanceScoreService.loadBalanceScore(balanceScore); 
		balanceScoreVo.setBalanceScoreMinData(balanceScoreMinData);
		balanceScoreVo.setBalanceScoreMaxData(balanceScoreMaxData);
		balanceScoreVo.setBalanceScoreAvgData(balanceScoreAvgData);
		request.setAttribute("balanceScoreVo", balanceScoreVo);
		return "balance_score_report";
	}
	
	@RequestMapping("/loadGradeEvaluation.do")
	public @ResponseBody List<BalanceScoreVo> loadGradeEvaluation(HttpServletRequest request, Integer competitionId){
		BalanceScoreVo balanceScoreVo = new BalanceScoreVo();
		int quarter = (int) request.getSession().getAttribute("currentQuarter") - 1;
//		System.out.println(quarter);
		Company company = new Company();
		company.setCompetitionId(competitionId);
		BalanceScore balanceScore = new BalanceScore();
		balanceScore.setQuarter(quarter);
		balanceScoreVo.setCompany(company);
		balanceScoreVo.setBalanceScore(balanceScore);
		BalanceScoreMinData balanceScoreMinData = new BalanceScoreMinData();
		balanceScoreMinData = balanceScoreService.getMinData(competitionId, quarter);
		BalanceScoreMaxData balanceScoreMaxData = new BalanceScoreMaxData();
		balanceScoreMaxData = balanceScoreService.getMaxData(competitionId, quarter);
		BalanceScoreAvgData balanceScoreAvgData = new BalanceScoreAvgData();
		balanceScoreAvgData = balanceScoreService.getAvgData(competitionId, quarter);
		List<BalanceScoreVo> balanceScoreVos = balanceScoreService.loadAllBalanceScore(balanceScoreVo);
		for (BalanceScoreVo vo : balanceScoreVos) {
			vo.setBalanceScoreAvgData(balanceScoreAvgData);
			vo.setBalanceScoreMaxData(balanceScoreMaxData);
			vo.setBalanceScoreMinData(balanceScoreMinData);
		}
		return balanceScoreVos;
	}
	
	public void insertBalanceScore(Integer competitionId, Integer companyId,int quarter){
		IdQuarter idQuarter=new IdQuarter();
		idQuarter.setId(companyId);
		idQuarter.setQuarter(quarter);
/*		IncomeStatement ll=competitionResultService.findIncomeStatementResultByCompanyIdQuarter(companyId, quarter);
*/		
		IncomeStatement incomeStatement = companyService.selectIncomeStatementResult(companyId, quarter).get(0);
		 
		//营业总收入
		double grossRevenue = incomeStatement.getYingyeIncome() + incomeStatement.getLixiIncome();//营业总收入
		//营业总成本
		double grossCost = incomeStatement.getYingyeCost() + incomeStatement.getFankuan() + incomeStatement.getYanfa() + incomeStatement.getGuanggao() 
				+ incomeStatement.getSalerCost() + incomeStatement.getSalescenterCost() + incomeStatement.getSalescenterWebCost() + incomeStatement.getBaogao()
				+ incomeStatement.getHuoyun() + incomeStatement.getKucun() + incomeStatement.getExcessCapacity() + incomeStatement.getZhejiu() + incomeStatement.getNetmarketCost()
				+ incomeStatement.getLixiCost();
		//营业利润
		double operatingProfit = grossRevenue - grossCost;
		CashFlow cashFlow = companyService.selectCashFlowResult(companyId, quarter).get(0);
		//现金等价物余额
		double cashEquivalent = cashFlow.getYuE();
		BalanceSheet balanceSheet = companyService.selectBalanceSheetResult(companyId, quarter).get(0);
		
		double grossAsset = balanceSheet.getHuobi() + balanceSheet.getCunkuan() + balanceSheet.getLixiCollection()
				 + balanceSheet.getCunhuo() + balanceSheet.getZichan();
		double grossDebt = balanceSheet.getDaikuanEmergency() + balanceSheet.getLixiPay() + balanceSheet.getDaikuanNormal();
		//资产管理
		double assetManagement = grossAsset - grossDebt;
		//人员培训时间
		double trainingTime = processTrainingTime(companyId, quarter);
		//净利润
		double netProfit = incomeStatement.getYingyeIncome() + incomeStatement.getLixiIncome() + incomeStatement.getTechIncome()
				+ incomeStatement.getQitaIncome() - incomeStatement.getYingyeCost() - incomeStatement.getSalerCost() - incomeStatement.getSalescenterCost()
				- incomeStatement.getSalescenterWebCost() - incomeStatement.getNetmarketCost() - incomeStatement.getLixiCost();
		
		CompanyMediaVo companyMediaVo = new CompanyMediaVo();
		companyMediaVo = initCompanyMediaVo(companyId, quarter);
		List<CompanyMediaVo> companyMediaList = balanceScoreService.getCompanyMediaCostByCompanyId(companyMediaVo);
		//广告成本
		double advertiseCost = countAdCost(companyMediaList);
		CompanyMarketShare companyMarketShare = performanceReportService.findCompanyMarketShareByCompanyId(companyId, quarter);
		//市场份额
		double marketShare = companyMarketShare.getBusinessShare() + companyMarketShare.getPerfectShare() + companyMarketShare.getPracticalShare();
		//生产效率
		CompanyInvestment companyInvestment = performanceReportService.findCompanyInvestmentByCompanyId(companyId, quarter);
		double productionEfficiency = companyInvestment.getWorkerEfficiency();
		
		//销售人员薪酬
		SalesSalary salesSalary = balanceScoreService.getSalesSalaryByCompanyIdQuarter(companyId, quarter);
		List<HirePeople> hirePeopleList = balanceScoreService.getHirePeopleByCompanyIdQuarter(companyId);
		List<HirePeopleOnline> hirePeopleOnlineList = balanceScoreService.getHirePeopleOnlineByCompanyIdQuarter(companyId);
		int salesNum = countSalesManNum(hirePeopleList, hirePeopleOnlineList);
		double salesStaffRemuneration = salesNum * salesSalary.getSalaryTotal();
		//单位营销收益
		double unitMarketingRevenue;
		if(advertiseCost == 0 && advertiseCost == 0){
			unitMarketingRevenue = 0;
		}else{
			unitMarketingRevenue = netProfit/(advertiseCost + advertiseCost);
		}
		BalanceScore balanceScore = new BalanceScore();
		balanceScore.setAssetManagement(assetManagement);
		balanceScore.setCashEquivalent(cashEquivalent);
		balanceScore.setCompanyId(companyId);
		balanceScore.setGrossCost(grossCost);
		balanceScore.setGrossRevenue(grossRevenue);
		balanceScore.setMarketShare(marketShare);
		balanceScore.setOperatingProfit(operatingProfit);
		balanceScore.setProductionEfficiency(productionEfficiency);
		balanceScore.setQuarter(quarter);
		balanceScore.setSalesStaffRemuneration(salesStaffRemuneration);
		balanceScore.setTrainingTime(trainingTime);
		balanceScore.setUnitMarketingRevenue(unitMarketingRevenue);
		balanceScoreService.insertBalanceScore(balanceScore);
	}

	private int countSalesManNum(List<HirePeople> hirePeopleList, List<HirePeopleOnline> hirePeopleOnlineList) {
		// TODO Auto-generated method stub
		int num = 0;
		for (HirePeople hirePeople : hirePeopleList) {
			num = num + hirePeople.getSaleman() + hirePeople.getAfterSale();
		}
		
		for (HirePeopleOnline hirePeopleOnline : hirePeopleOnlineList) {
			num = num + hirePeopleOnline.getSaleman() + hirePeopleOnline.getAfterSale();
		}
		return num;
	}

	private double countAdCost(List<CompanyMediaVo> companyMediaList) {
		// TODO Auto-generated method stub
		double advertiseCost = 0;
		for (CompanyMediaVo companyMediaVo : companyMediaList) {
			advertiseCost += companyMediaVo.getCompanyMedia().getNum() * companyMediaVo.getMediaInfo().getCost();
		}
		return advertiseCost;
	}

	private CompanyMediaVo initCompanyMediaVo(Integer companyId, Integer currentQuarter) {
		// TODO Auto-generated method stub
		CompanyMediaVo companyMediaVo = new CompanyMediaVo();
		CompanyMedia companyMedia = new CompanyMedia();
		companyMedia.setCompanyId(companyId);
		companyMedia.setQuarter(currentQuarter);
		companyMediaVo.setCompanyMedia(companyMedia);
		return companyMediaVo;
	}

	private double processTrainingTime(Integer companyId, Integer currentQuarter) {
		// TODO Auto-generated method stub
		LearnTimeVo learnTimeVo = new LearnTimeVo();
		LearnTime learnTime = new LearnTime();
		learnTime.setQuarter(currentQuarter);
		learnTimeVo.setCompanyId(companyId);
		learnTimeVo.setLearnTime(learnTime);
		List<LearnTime> list = balanceScoreService.getLearnTimeByCompanyId(learnTimeVo);
		double totalTime = 0;
		for (LearnTime lt : list) {
			totalTime += lt.getTime();
		}
		return totalTime;
	}
	
	@MethodLog(description="课程介绍")
	@RequestMapping("/classIntroduction.do")
	public void getIntroductionRequest(){
		
	}
}
