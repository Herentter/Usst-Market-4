package cn.usst.market.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.usst.market.po.BalanceSheet;
import cn.usst.market.po.CashFlow;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyFinanceVo;
import cn.usst.market.po.Competition;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.IncomeStatement;
import cn.usst.market.service.CompanyService;
import cn.usst.market.service.CompetitionResultService;
import cn.usst.market.service.CompetitionService;

@Controller
public class CompetitionResultController {
	@Autowired
	private CompetitionService competitionService;
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private CompetitionResultService competitionResultService;
	
	@RequestMapping("/jumpCompetitionResult.do")
	public String jumpPolicyDecision(Model model,Integer id) throws Exception{
		
		Competition competition= competitionService.findCompetitionById(id);
		//List<Company> companyList= competitionService
		//通过形参中的model将model数据传到页面,相当于上面addObjeect
		model.addAttribute("competition", competition);
		
		//返回jsp页面，相当于modelAndView.setViewName
		return "jsp/competitionResult/competitionResult";	
	}
	//结果汇总
	@RequestMapping("/competitionResult/resultSummary.do")
	public String resultSummary(Model model,Integer competitionId,Integer currentQuarter) throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		//
		//List<Float> grossProfitList = new ArrayList<Float>();
		//List<Float> sumPayList = new ArrayList<Float>();
		//净收入
		List<Float> netIncomeList = new ArrayList<Float>();
		List<Float> yuEList = new ArrayList<Float>();
		List<Float> liucunList = new ArrayList<Float>();
		
		//求上面的和
		if(companyList!=null){
			for(int i=0;i<companyList.size();i++){
			//==============求净收入=============
				//毛利
				float grossProfit=0;
				//支出
				float sumPay=0;
				//营业利润
				float sumProfit=0;
				//定义净收入
				float netIncome=0;
				
				//CompanyFinanceVo companyFinanceVo=new CompanyFinanceVo();
				IdQuarter idQuarter=new IdQuarter();
				idQuarter.setId(companyList.get(i).getId());
				idQuarter.setQuarter(currentQuarter);
				
				//companyFinanceVo.setCompany(companyList.get(i));
				IncomeStatement incomeStatement = competitionResultService.findIncomeStatementByIdAndQuarter(idQuarter);
				if(incomeStatement!=null){
					//companyFinanceVo.setIncomeStatement(incomeStatement);
					//求和
					grossProfit = incomeStatement.getYingyeIncome()-incomeStatement.getYingyeCost()-incomeStatement.getFankuan();
					sumPay = incomeStatement.getYanfa()+incomeStatement.getGuanggao()+incomeStatement.getSalerCost()+incomeStatement.getSalescenterCost()+
								incomeStatement.getBaogao()+incomeStatement.getHuoyun()+incomeStatement.getKucun()+incomeStatement.getZhejiu()+
								incomeStatement.getNetmarketCost();
					sumProfit = grossProfit - sumPay;
					netIncome = sumProfit+incomeStatement.getTechIncome()-incomeStatement.getTechCost()+incomeStatement.getQitaIncome()-incomeStatement.getQitaCost()+
								incomeStatement.getLixiIncome()-incomeStatement.getLixiCost()-incomeStatement.getTaxCost();
				}
				
				//companyFinanceVoList.add(companyFinanceVo);
				//grossProfitList.add(grossProfit);
				//sumPayList.add(sumPay);
				//sumProfitList.add(sumProfit);
				netIncomeList.add(netIncome);
				
			//================求季末现金流=============
				//定义现金流总和
				float operatingCashSum=0;
				//定义财务活动总和
				float financeActiveSum=0;
				//定义季末现金余额
				float yuE=0;
				//现金流表
				CashFlow cashFlow = competitionResultService.findCashFlowByIdAndQuarter(idQuarter);
				if(cashFlow!=null){
					//现金流总和
					operatingCashSum=cashFlow.getXiaoshouGet()+cashFlow.getLixiGet()+cashFlow.getJishuGet()+cashFlow.getQitaGet()-cashFlow.getFankuanPay()-
								cashFlow.getShengchanPay()-cashFlow.getYanfaPay()-cashFlow.getGuanggaoPay()-cashFlow.getSalerPay()-cashFlow.getSalescenterPay()-
								cashFlow.getDiaoyanPay()-cashFlow.getHuoyunPay()-cashFlow.getKucunPay()-cashFlow.getNetmarketPay()-cashFlow.getTaxPay()-
								cashFlow.getLixiPay()-cashFlow.getJishuPay()-cashFlow.getQitaPay();
					//财务活动总和
					financeActiveSum=cashFlow.getDaikuanNormalGet()+cashFlow.getDaikuanEmergyGet()+cashFlow.getCunkuanRegularGet()-
								cashFlow.getDaikuanNormalPay()-cashFlow.getDaikuanEmergyPay()-cashFlow.getCunkuanRegularPay();
					//季末现金余额应该计算出来并存入当前季度的余额
					IdQuarter idQuarterPre=new IdQuarter();
					idQuarterPre.setId(companyList.get(i).getId());
					idQuarterPre.setQuarter(currentQuarter-1);
					CashFlow cashFlowPre = competitionResultService.findCashFlowByIdAndQuarter(idQuarterPre);
					//定义上季度余额
					float yuEPre=0;
					if(cashFlowPre!=null){
						yuEPre= cashFlowPre.getYuE();
					}
					yuE= financeActiveSum+yuEPre+operatingCashSum-cashFlow.getGongchangPay();
					//这里应该把余额存入数据库中，暂时没有实现。
				}
				yuEList.add(yuE);
				//================求留存收益=============
				//float assetSum=0;
				//float debtShare=0;
				float liucun = 0;
				//公司
				BalanceSheet balanceSheet = competitionResultService.findBalanceSheetByIdAndQuarter(idQuarter);
				if(balanceSheet!=null){
					//流动资产+长期资产合计
					//assetSum=balanceSheet.getHuobi()+balanceSheet.getCunkuan()+balanceSheet.getLixiCollection()+balanceSheet.getCunhuo()+balanceSheet.getZichan();
					//负债+股本金合计
					//debtShare=balanceSheet.getDaikuanNormal()+balanceSheet.getDaikuanEmergency()+balanceSheet.getGuben()-balanceSheet.getLiucun();
					liucun = balanceSheet.getLiucun();
				}
				liucunList.add(liucun);
			}
		
		}
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		model.addAttribute("netIncomeList", netIncomeList);
		model.addAttribute("yuEList", yuEList);
		model.addAttribute("liucunList", liucunList);
		model.addAttribute("quarter", currentQuarter);
		
		return "jsp/competitionResult/resultSummary";	
	}
	
	//跳转详细竞赛结果
	@RequestMapping("/competitionResult/detailedCompetitionResult.do")
	public String detailedCompetitionResult(Model model,Integer competitionId,Integer currentQuarter) throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		model.addAttribute("quarter", currentQuarter);
		
		return "jsp/competitionResult/detailedCompetitionResult";	
	}
	
	//损益表
	@RequestMapping("/competitionResult/incomeStatement.do")
	public String incomeStatement(Model model,Integer competitionId,Integer currentQuarter) throws Exception{

		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		List<CompanyFinanceVo> companyFinanceVoList= new ArrayList<CompanyFinanceVo>();
		//定义总和
		List<Float> grossProfitList = new ArrayList<Float>();
		List<Float> sumPayList = new ArrayList<Float>();
		List<Float> sumProfitList = new ArrayList<Float>();
		List<Float> netIncomeList = new ArrayList<Float>();
		if(companyList!=null){
			for(int i=0;i<companyList.size();i++){
				//毛利
				float grossProfit=0;
				//支出
				float sumPay=0;
				//营业利润
				float sumProfit=0;
				//定义净收入
				float netIncome=0;
				
				CompanyFinanceVo companyFinanceVo=new CompanyFinanceVo();
				IdQuarter idQuarter=new IdQuarter();
				idQuarter.setId(companyList.get(i).getId());
				idQuarter.setQuarter(currentQuarter);
				//现金流表
				companyFinanceVo.setCompany(companyList.get(i));
				IncomeStatement incomeStatement = competitionResultService.findIncomeStatementByIdAndQuarter(idQuarter);
				if(incomeStatement!=null){
					companyFinanceVo.setIncomeStatement(incomeStatement);
					//求和
					grossProfit=incomeStatement.getYingyeIncome()-incomeStatement.getYingyeCost()-incomeStatement.getFankuan();
					sumPay=incomeStatement.getYanfa()+incomeStatement.getGuanggao()+incomeStatement.getSalerCost()+incomeStatement.getSalescenterCost()+
								incomeStatement.getBaogao()+incomeStatement.getHuoyun()+incomeStatement.getKucun()+incomeStatement.getZhejiu()+
								incomeStatement.getNetmarketCost();
					sumProfit = grossProfit - sumPay;
					netIncome=sumProfit+incomeStatement.getTechIncome()-incomeStatement.getTechCost()+incomeStatement.getQitaIncome()-incomeStatement.getQitaCost()+
								incomeStatement.getLixiIncome()-incomeStatement.getLixiCost()-incomeStatement.getTaxCost();
				}
				
				companyFinanceVoList.add(companyFinanceVo);
				grossProfitList.add(grossProfit);
				sumPayList.add(sumPay);
				sumProfitList.add(sumProfit);
				netIncomeList.add(netIncome);
			}
		}
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyFinanceVoList", companyFinanceVoList);
		//总和
		model.addAttribute("grossProfitList", grossProfitList);
		model.addAttribute("sumPayList", sumPayList);
		model.addAttribute("sumProfitList", sumProfitList);
		model.addAttribute("netIncomeList", netIncomeList);
		
		model.addAttribute("quarter", currentQuarter);
		
		return "jsp/competitionResult/detailedCompetitionResult/incomeStatement";	
	}
	
	//现金流表
	@RequestMapping("/competitionResult/cashFlow.do")
	public String cashFlow(Model model,Integer competitionId,Integer currentQuarter) throws Exception{

		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		List<CompanyFinanceVo> companyFinanceVoList= new ArrayList<CompanyFinanceVo>();
		//定义现金流总和、财务活动总和
		List<Float> operatingCashSumList = new ArrayList<Float>();
		List<Float> financeActiveSumList = new ArrayList<Float>();
		List<Float> yuEList = new ArrayList<Float>();
		if(companyList!=null){
			for(int i=0;i<companyList.size();i++){
				//定义现金流总和
				float operatingCashSum=0;
				//定义财务活动总和
				float financeActiveSum=0;
				//定义季末现金余额
				float yuE=0;
				CompanyFinanceVo companyFinanceVo=new CompanyFinanceVo();
				IdQuarter idQuarter=new IdQuarter();
				idQuarter.setId(companyList.get(i).getId());
				idQuarter.setQuarter(currentQuarter);
				//现金流表
				companyFinanceVo.setCompany(companyList.get(i));
				CashFlow cashFlow = competitionResultService.findCashFlowByIdAndQuarter(idQuarter);
				if(cashFlow!=null){
					companyFinanceVo.setCashFlow(cashFlow);
					//现金流总和
					operatingCashSum=cashFlow.getXiaoshouGet()+cashFlow.getLixiGet()+cashFlow.getJishuGet()+cashFlow.getQitaGet()-cashFlow.getFankuanPay()-
								cashFlow.getShengchanPay()-cashFlow.getYanfaPay()-cashFlow.getGuanggaoPay()-cashFlow.getSalerPay()-cashFlow.getSalescenterPay()-
								cashFlow.getDiaoyanPay()-cashFlow.getHuoyunPay()-cashFlow.getKucunPay()-cashFlow.getNetmarketPay()-cashFlow.getTaxPay()-
								cashFlow.getLixiPay()-cashFlow.getJishuPay()-cashFlow.getQitaPay();
					//财务活动总和
					financeActiveSum=cashFlow.getDaikuanNormalGet()+cashFlow.getDaikuanEmergyGet()+cashFlow.getCunkuanRegularGet()-
								cashFlow.getDaikuanNormalPay()-cashFlow.getDaikuanEmergyPay()-cashFlow.getCunkuanRegularPay();
					//季末现金余额应该计算出来并存入当前季度的余额
					IdQuarter idQuarterPre=new IdQuarter();
					idQuarterPre.setId(companyList.get(i).getId());
					idQuarterPre.setQuarter(currentQuarter-1);
					CashFlow cashFlowPre = competitionResultService.findCashFlowByIdAndQuarter(idQuarterPre);
					//定义上季度余额
					float yuEPre=0;
					if(cashFlowPre!=null){
						yuEPre= cashFlowPre.getYuE();
					}
					yuE= financeActiveSum+yuEPre+operatingCashSum-cashFlow.getGongchangPay();
					//这里应该把余额存入数据库中，暂时没有实现。
				}
				companyFinanceVoList.add(companyFinanceVo);
				operatingCashSumList.add(operatingCashSum);
				financeActiveSumList.add(financeActiveSum);
				yuEList.add(yuE);
			}
		}
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyFinanceVoList", companyFinanceVoList);
		//总和
		model.addAttribute("operatingCashSumList", operatingCashSumList);
		model.addAttribute("financeActiveSumList", financeActiveSumList);
		model.addAttribute("yuEList", yuEList);
		
		model.addAttribute("quarter", currentQuarter);
		
		return "jsp/competitionResult/detailedCompetitionResult/cashFlow";	
	}
	
	//资产负债表
	@RequestMapping("/competitionResult/balanceSheet.do")
	public String balanceSheet(Model model,Integer competitionId,Integer currentQuarter) throws Exception{

		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		List<CompanyFinanceVo> companyFinanceVoList= new ArrayList<CompanyFinanceVo>();
		List<Float> assetSumList = new ArrayList<Float>();
		List<Float> debtShareSumList = new ArrayList<Float>();
		if(companyList!=null){
			for(int i=0;i<companyList.size();i++){
				float assetSum=0;
				float debtShare=0;
				CompanyFinanceVo companyFinanceVo=new CompanyFinanceVo();
				IdQuarter idQuarter=new IdQuarter();
				idQuarter.setId(companyList.get(i).getId());
				idQuarter.setQuarter(currentQuarter);
				//公司
				companyFinanceVo.setCompany(companyList.get(i));
				BalanceSheet balanceSheet = competitionResultService.findBalanceSheetByIdAndQuarter(idQuarter);
				if(balanceSheet!=null){
					companyFinanceVo.setBalanceSheet(balanceSheet);
					//流动资产+长期资产合计
					assetSum=balanceSheet.getHuobi()+balanceSheet.getCunkuan()+balanceSheet.getLixiCollection()+balanceSheet.getCunhuo()+balanceSheet.getZichan();
					//负债+股本金合计
					debtShare=balanceSheet.getDaikuanNormal()+balanceSheet.getDaikuanEmergency()+balanceSheet.getGuben()-balanceSheet.getLiucun();
				}
				companyFinanceVoList.add(companyFinanceVo);
				assetSumList.add(assetSum);
				debtShareSumList.add(debtShare);
			}
		}
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyFinanceVoList", companyFinanceVoList);
		model.addAttribute("assetSumList", assetSumList);
		model.addAttribute("debtShareSumList", debtShareSumList);
		model.addAttribute("quarter", currentQuarter);
		
		return "jsp/competitionResult/detailedCompetitionResult/balanceSheet";	
	}
	
	//有用图表
	@RequestMapping("/competitionResult/usefulChart.do")
	public String usefulChart(Model model,Integer competitionId,Integer currentQuarter) throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		model.addAttribute("quarter", currentQuarter);
		
		return "jsp/competitionResult/usefulChart";	
	}
	
	//资产负债表
	@RequestMapping("/competitionResult/balanceSheetChart.do")
	public String balanceSheetChart(Model model,Integer competitionId,Integer currentQuarter) throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		
		List<List<Float>> resultChartList = new ArrayList<List<Float>>();
		
		if(companyList!=null && currentQuarter>=1){
			for(int j=1;j<=currentQuarter;j++){
				List<Float> balanceSheetChartList = new ArrayList<Float>();
				for(int i=0;i<companyList.size();i++){
					float assetSum=0;
					CompanyFinanceVo companyFinanceVo=new CompanyFinanceVo();
					IdQuarter idQuarter=new IdQuarter();
					idQuarter.setId(companyList.get(i).getId());
					idQuarter.setQuarter(j);
					//公司
					companyFinanceVo.setCompany(companyList.get(i));
					BalanceSheet balanceSheet = competitionResultService.findBalanceSheetByIdAndQuarter(idQuarter);
					if(balanceSheet!=null){
						companyFinanceVo.setBalanceSheet(balanceSheet);
						//资产
						assetSum=balanceSheet.getHuobi()+balanceSheet.getCunkuan()+balanceSheet.getLixiCollection()+balanceSheet.getCunhuo()+balanceSheet.getZichan();
					}
					balanceSheetChartList.add(assetSum);
				}
				resultChartList.add(balanceSheetChartList);
			}
			
		}
		
		model.addAttribute("resultChartList", resultChartList);
		model.addAttribute("quarter", currentQuarter);
		model.addAttribute("chartName", "资产负债表总量");
		
		return "jsp/competitionResult/everyIndicatorChart";	
	}
	
	//现金表
	@RequestMapping("/competitionResult/cashChart.do")
	public String cashChart(Model model,Integer competitionId,Integer currentQuarter) throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		
		List<List<Float>> resultChartList = new ArrayList<List<Float>>();
		
		if(companyList!=null && currentQuarter>=1){
			for(int j=1;j<=currentQuarter;j++){
				
				List<Float> moneyList = new ArrayList<Float>();
				
				for(int i=0;i<companyList.size();i++){
					//定义现金流总和
					float operatingCashSum=0;
					//定义财务活动总和
					float financeActiveSum=0;
					//定义季末现金余额
					float yuE=0;
					
					CompanyFinanceVo companyFinanceVo=new CompanyFinanceVo();
					IdQuarter idQuarter=new IdQuarter();
					idQuarter.setId(companyList.get(i).getId());
					idQuarter.setQuarter(j);
					
					companyFinanceVo.setCompany(companyList.get(i));
					//改这个查询结果
					CashFlow cashFlow = competitionResultService.findCashFlowByIdAndQuarter(idQuarter);
					if(cashFlow!=null){
						companyFinanceVo.setCashFlow(cashFlow);
						//现金流总和
						operatingCashSum=cashFlow.getXiaoshouGet()+cashFlow.getLixiGet()+cashFlow.getJishuGet()+cashFlow.getQitaGet()-cashFlow.getFankuanPay()-
									cashFlow.getShengchanPay()-cashFlow.getYanfaPay()-cashFlow.getGuanggaoPay()-cashFlow.getSalerPay()-cashFlow.getSalescenterPay()-
									cashFlow.getDiaoyanPay()-cashFlow.getHuoyunPay()-cashFlow.getKucunPay()-cashFlow.getNetmarketPay()-cashFlow.getTaxPay()-
									cashFlow.getLixiPay()-cashFlow.getJishuPay()-cashFlow.getQitaPay();
						//财务活动总和
						financeActiveSum=cashFlow.getDaikuanNormalGet()+cashFlow.getDaikuanEmergyGet()+cashFlow.getCunkuanRegularGet()-
									cashFlow.getDaikuanNormalPay()-cashFlow.getDaikuanEmergyPay()-cashFlow.getCunkuanRegularPay();
						//季末现金余额应该计算出来并存入当前季度的余额
						IdQuarter idQuarterPre=new IdQuarter();
						idQuarterPre.setId(companyList.get(i).getId());
						idQuarterPre.setQuarter(j-1);
						CashFlow cashFlowPre = competitionResultService.findCashFlowByIdAndQuarter(idQuarterPre);
						//定义上季度余额
						float yuEPre=0;
						if(cashFlowPre!=null){
							yuEPre= cashFlowPre.getYuE();
						}
						yuE= financeActiveSum+yuEPre+operatingCashSum-cashFlow.getGongchangPay();
						//这里应该把余额存入数据库中，暂时没有实现。
					}
					//一直到这里
					moneyList.add(yuE);
				}
				resultChartList.add(moneyList);
			}
			
		}
		
		model.addAttribute("resultChartList", resultChartList);
		model.addAttribute("quarter", currentQuarter);
		model.addAttribute("chartName", "现金");
		
		return "jsp/competitionResult/everyIndicatorChart";	
	}
	
	//净收入表
	@RequestMapping("/competitionResult/netIncomeChart.do")
	public String netIncomeChart(Model model,Integer competitionId,Integer currentQuarter) throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		
		List<List<Float>> resultChartList = new ArrayList<List<Float>>();
		
		if(companyList!=null && currentQuarter>=1){
			for(int j=1;j<=currentQuarter;j++){
				
				List<Float> moneyList = new ArrayList<Float>();
				
				for(int i=0;i<companyList.size();i++){
					//毛利
					float grossProfit=0;
					//支出
					float sumPay=0;
					//营业利润
					float sumProfit=0;
					//定义净收入
					float netIncome=0;
					
					//CompanyFinanceVo companyFinanceVo=new CompanyFinanceVo();
					IdQuarter idQuarter=new IdQuarter();
					idQuarter.setId(companyList.get(i).getId());
					idQuarter.setQuarter(j);
					
					//companyFinanceVo.setCompany(companyList.get(i));
					IncomeStatement incomeStatement = competitionResultService.findIncomeStatementByIdAndQuarter(idQuarter);
					if(incomeStatement!=null){
						//companyFinanceVo.setIncomeStatement(incomeStatement);
						//求和
						grossProfit = incomeStatement.getYingyeIncome()-incomeStatement.getYingyeCost()-incomeStatement.getFankuan();
						sumPay = incomeStatement.getYanfa()+incomeStatement.getGuanggao()+incomeStatement.getSalerCost()+incomeStatement.getSalescenterCost()+
									incomeStatement.getBaogao()+incomeStatement.getHuoyun()+incomeStatement.getKucun()+incomeStatement.getZhejiu()+
									incomeStatement.getNetmarketCost();
						sumProfit = grossProfit - sumPay;
						netIncome = sumProfit+incomeStatement.getTechIncome()-incomeStatement.getTechCost()+incomeStatement.getQitaIncome()-incomeStatement.getQitaCost()+
									incomeStatement.getLixiIncome()-incomeStatement.getLixiCost()-incomeStatement.getTaxCost();
					}
					
					
					//一直到这里
					moneyList.add(netIncome);
				}
				resultChartList.add(moneyList);
			}
			
		}
		
		model.addAttribute("resultChartList", resultChartList);
		model.addAttribute("quarter", currentQuarter);
		model.addAttribute("chartName", "净收入");
		
		return "jsp/competitionResult/everyIndicatorChart";	
	}
	
	//发布结果
	@RequestMapping("/competitionResult/releaseResult.do")
	public String releaseResult(Model model,Integer competitionId,Integer currentQuarter) throws Exception{
		Competition competition= competitionService.findCompetitionById(competitionId);
		List<Company> companyList=companyService.showCompanyByCompetitionId(competitionId);
		
		model.addAttribute("competition", competition);
		model.addAttribute("companyList", companyList);
		model.addAttribute("quarter", currentQuarter);
		
		return "jsp/competitionResult/releaseResult";	
	}
	
	
}
