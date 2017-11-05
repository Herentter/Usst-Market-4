package cn.usst.market.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.CashFlowMapper;
import cn.usst.market.mapper.CompanyMapper;
import cn.usst.market.mapper.CompetitionMapper;
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
import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.CompanyMedia;
import cn.usst.market.po.CompanyPersonGoal;
import cn.usst.market.po.CompanyProduct;
import cn.usst.market.po.CompanyReport;
import cn.usst.market.po.CompanyRule;
import cn.usst.market.po.CompanyStock;
import cn.usst.market.po.CompanyStrategy;
import cn.usst.market.po.Competition;
import cn.usst.market.po.DemandForecast;
import cn.usst.market.po.Duty;
import cn.usst.market.po.FixedDeposit;
import cn.usst.market.po.HirePeople;
import cn.usst.market.po.HirePeopleOnline;
import cn.usst.market.po.HirePeopleOnlineVo;
import cn.usst.market.po.HirePeopleVo;
import cn.usst.market.po.IncomeStatement;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.OperationCapacity;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.po.ProductMarketShare;
import cn.usst.market.po.ProductPrice;
import cn.usst.market.po.SalesSalary;
import cn.usst.market.po.StrategyInfo;
import cn.usst.market.po.TeacherQueryVo;
import cn.usst.market.po.WorkersSalary;
import cn.usst.market.service.CompanyService;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyMapper companyMapper;
	
	@Autowired
	private CashFlowMapper cashFlowMapper;
	
	@Autowired
	private CompetitionMapper CM;

	@Override
	public void insert(Company record) {
		companyMapper.insert(record);
	}

	@Override
	public Company findCompanyByCondition(Company record) {
		
		return companyMapper.findCompanyByCondition(record);
	}

	@Override
	public Company findCompanyById(Company record) {

		return companyMapper.findCompanyById(record);
	}

	@Override
	public void updateCompanyName(Company record) {
		companyMapper.updateCompanyName(record);
		
	}

	@Override
	public List<Company> showCompanyByCompetitionId(Integer id) {
		return companyMapper.showCompanyByCompetitionId(id);
	}



	@Override
	public List<String> countStrategyTitle() {
		return companyMapper.countStrategyTitle();
	}

	@Override
	public List<StrategyInfo> showStrategyInfoBytitle(String title) {
		
		return companyMapper.showStrategyInfoByTitle(title);
	}

	@Override
	public List<String> countCompanyRuleTitle() {
		
		return companyMapper.countCompanyRuleTitle();
	}

	@Override
	public List<StrategyInfo> showCompanyRuleInfoBytitle(String title) {
		
		return companyMapper.showCompanyRuleInfoBytitle(title);
	}

	@Override
	public List<String> countPersonalGoalTitle() {
		
		return companyMapper.countPersonalGoalTitle();
	}

	@Override
	public List<StrategyInfo> showPersonalGoalInfoBytitle(String title) {
		
		return companyMapper.showPersonalGoalInfoBytitle(title);
	}

	@Override
	public List<Duty> showAllPosition() {
		
		return companyMapper.showAllPosition();
	}

	@Override
	public List<TeacherQueryVo> findCompanyList(TeacherQueryVo teacherQueryVo) throws Exception {

		return companyMapper.findCompanyList(teacherQueryVo);
	}

	@Override
	public List<TeacherQueryVo> selectCompanyByPage(TeacherQueryVo teacherQueryVo) {
		
		return companyMapper.selectCompanyByPage(teacherQueryVo);
	}

	@Override
	public long getCompanyCount(TeacherQueryVo teacherQueryVo) {
		
		return companyMapper.getCompanyCount(teacherQueryVo);
	}

	@Override
	public List<MarketInfo> showMarketInfo() {
		
		return companyMapper.showMarketInfo();
	}

	@Override
	public List<CapacityInfo> showCapacityInfo() {
		
		return companyMapper.showCapacityInfo();
	}

	@Override
	public Company checkCompanyNameExist(String name) {
		
		return companyMapper.checkCompanyNameExist(name);
	}

	@Override
	public Company selectCompanyById(Integer id) {
		
		return companyMapper.selectCompanyById(id);
	}

	@Override
	public void updateCompanyNameById(Integer id, String name) {
		
		companyMapper.updateCompanyNameById(id, name);
	}



	@Override
	public CompanyStrategy selectCompanyStrategy(Integer company_id, Integer quarter) {
		
		return companyMapper.selectCompanyStrategy(company_id, quarter) ;
	}

	@Override
	public int insertCompanyStrategy(CompanyStrategy companyStrategy) throws Exception {
		
		return companyMapper.insertCompanyStrategy(companyStrategy);
	}

	@Override
	public void updateCompanyStrategy(CompanyStrategy companyStrategy) throws Exception {
		companyMapper.updateCompanyStrategy(companyStrategy);
		
	}
	@Override
	public void deleteProductById(Integer id) {
		
		companyMapper.deleteProductById(id);
	}
	
	@Override
	public List<ProductInfo> showProductDetailByTitle(String title) {
		
		return companyMapper.showProductDetailByTitle(title);
	}

	@Override
	public List<String> countProductInfoTitle() {
		
		return companyMapper.countProductInfoTitle();
	}

	@Override
	public List<ProductInfo> showProductInfoByTitle(String title) {
		
		return companyMapper.showProductInfoByTitle(title);
	}
	
	
	@Override
	public CompanyDuty selectMemberByMemberId(Integer id) {
		return companyMapper.selectMemberByMemberId(id);
	}

	@Override
	public void insertMemberDuty(CompanyDuty companyDuty) {
		companyMapper.insertMemberDuty(companyDuty);
		
	}

	@Override
	public void updateMemberDuty(CompanyDuty companyDuty) {
		companyMapper.updateMemberDuty(companyDuty);
	}

	
	@Override
	public CompanyDuty selectMemberDutyByMemberId(Integer id) {
		return companyMapper.selectMemberDutyByMemberId(id);
	}

	@Override
	public List<Integer> selectMemberIdByCompanyId(Integer id) {
		
		return companyMapper.selectMemberIdByCompanyId(id);
	}

	@Override
	public List<CompanyDuty> selectMemberDutyByCompanyId(Integer id) {
		
		return companyMapper.selectMemberDutyByCompanyId(id);

	}
	
	@Override
	public CompanyRule selectCompanyRule(Integer company_id, Integer quarter) {
		return companyMapper.selectCompanyRule(company_id, quarter);
	}

	@Override
	public void insertCompanyRule(CompanyRule companyRule) {
		companyMapper.insertCompanyRule(companyRule);
		
	}

	@Override
	public void updateCompanyRule(CompanyRule companyRule) {
		companyMapper.updateCompanyRule(companyRule);
		
	}
	
	@Override
	public CompanyPersonGoal selectCompanyPersonGoal(Integer company_id, Integer quarter) {
		return companyMapper.selectCompanyPersonGoal(company_id, quarter);
	}

	@Override
	public void insertCompanyPersonGoal(CompanyPersonGoal companyPersonGoal) {
		companyMapper.insertCompanyPersonGoal(companyPersonGoal);
		
	}

	@Override
	public void updateCompanyPersonGoal(CompanyPersonGoal companyPersonGoal) {
		companyMapper.updateCompanyPersonGoal(companyPersonGoal);	
	}
	
	@Override
	public CompanyMarket selectCompanyPhysicalMarket(Integer company_id, Integer quarter) {
		return companyMapper.selectCompanyPhysicalMarket(company_id, quarter);
	}

	@Override
	public void insertCompanyMarket(CompanyMarket companyMarket) {
		companyMapper.insertCompanyMarket(companyMarket);
		
	}

	@Override
	public void updateCompanyMarket(CompanyMarket companyMarket) {
		companyMapper.updateCompanyMarket(companyMarket);
		
	}
	
	@Override
	public List<CompanyMarket> showCompanymarket(CompanyMarket companyMarket)
	{
	return	companyMapper.showCompanymarket(companyMarket);
	}
	
	@Override
	public void insertmarketinfo(CompanyMarket mInfo) {
		companyMapper.insertmarketinfo(mInfo);
		
	}
	
	@Override
	public CashFlow selectCashFlowByCompanyId(int companyId, int quarter) {
		return companyMapper.selectCashFlowByCompanyId(companyId, quarter);
	}

	@Override
	public void updateCashFlowYanFa(float yanfa_pay, int company_id, int quarter) {
		companyMapper.updateCashFlowYanFa(yanfa_pay, company_id, quarter);
		
	}

	@Override
	public void insertCashFlow(int companyId, int quarter, float yanfaPay) {
		companyMapper.insertCashFlow(companyId, quarter, yanfaPay);
		
	}

	@Override
	public void updateCashFlowGongChang(float invest, int company_id, int quarter) {
		companyMapper.updateCashFlowGongChang(invest, company_id, quarter);
		
	}

	@Override
	public void updateCashFlowMarket(float salescenter_pay, int company_id, int quarter) {
		companyMapper.updateCashFlowMarket(salescenter_pay, company_id, quarter);
		
	}


	@Override
	public int selectSalesCenterOpen(int market_id) {
		
		return companyMapper.selectSalesCenterOpen(market_id);
	}

	@Override
	public int selectSalesCenterWebOpen(int market_id) {
		
		return companyMapper.selectSalesCenterWebOpen(market_id);
	}


	
	@Override
	public IncomeStatement selectIncomeStatementByCompanyId(int companyId, int quarter) {
		
		return companyMapper.selectIncomeStatementByCompanyId(companyId, quarter);
	}

	@Override
	public void updateIncomeStatementYanFa(float yanfa_pay, int company_id, int quarter) {
		
		companyMapper.updateIncomeStatementYanFa(yanfa_pay, company_id, quarter);
	}

	@Override
	public void updateIncomeStatementMarket(float salescenter_pay, int company_id, int quarter) {
		
		companyMapper.updateIncomeStatementMarket(salescenter_pay, company_id, quarter);
	}

	
	
	@Override
	public void insertCompanyProduct(CompanyProduct companyProduct) {
		companyMapper.insertCompanyProduct(companyProduct);
		
	}

	@Override
	public List<CompanyProduct> selectProductByCompanyId(Integer companyId) {
		return companyMapper.selectProductByCompanyId(companyId);
	}

	@Override
	public CompanyProduct selectProductByProductId(Integer id) {
		return companyMapper.selectProductByProductId(id);
	}

	@Override
	public List<ProductInfo> showAllDetail() {
		
		return companyMapper.showAllDetail();
	}

	@Override
	public void updateCompanyProduct(CompanyProduct companyProduct) {
		companyMapper.updateCompanyProduct(companyProduct);
		
	}
	@Override
	public void deleteCompanyProduct(Integer product_id) {
		companyMapper.deleteCompanyProduct(product_id);
		
	}
	
	

	@Override
	public List<BalanceSheet> showBalanceSheet(int company_id,int quarter) {
		
		return companyMapper.showBalanceSheet(company_id,quarter);
	}


	
	@Override
	public int selectGuBen(int compant_id, int quarter) {
		
		return companyMapper.selectGuBen(compant_id, quarter);
	}

	@Override
	public int selectTotalCount(int companyId, int i) {
		
		return companyMapper.selectTotalCount(companyId, i);
	}

	@Override
	public CapacityInfo selectCapacityInfo(int number) {
		
		return companyMapper.selectCapacityInfo(number);
	}

	@Override
	public void insertCompanyCapacity(int capacityNow, int number, int companyId, int quarter) {
		
		companyMapper.insertCompanyCapacity(capacityNow, number, companyId, quarter);
		
	}

	@Override
	public List<CompanyCapacity> showCapacityInfo1(int companyId, int quarter) {
		
		return companyMapper.showCapacityInfo1(companyId, quarter);
	}

	@Override
	public void updateCompanyCapacity(int capacity_now,int capacity_add, int companyId, int quarter) {
		
		 companyMapper.updateCompanyCapacity(capacity_now, capacity_add, companyId, quarter);
		
	}

	@Override
	public List<CashFlow> showCashFlow(int company_id, int quarter) {
		
		return companyMapper.showCashFlow(company_id, quarter);
	}

	@Override
	public List<IncomeStatement> showIncomeStatement(int company_id, int quarter) {
		
		return companyMapper.showIncomeStatement(company_id, quarter);
	}
	
	@Override
	public List<CompanyStock> showCompanyStock(int company_id, int quarter) {
		
		return companyMapper.showCompanyStock(company_id, quarter);
	}
	
	@Override
	public List<FixedDeposit> showFixedDeposit() {
		return companyMapper.showFixedDeposit();
	}

	@Override
	public void insertFixedDeposite(int companyIdInt, float tiQuFloat, float cunRuFloat,int quarter,float cunkunLast) {
		
		companyMapper.insertFixedDeposite(companyIdInt, tiQuFloat, cunRuFloat,quarter,cunkunLast);
	}

	@Override
	public List<FixedDeposit> selectFixedDeposite(int companyIdInt, int quarter) {
		
		return companyMapper.selectFixedDeposite(companyIdInt,quarter);
	}
	@Override
	public void updateFixedDeposite(int companyIdInt, float tiQuFloat, float cunRuFloat, int quarter) {
		
		companyMapper.updateFixedDeposite(companyIdInt,tiQuFloat,cunRuFloat,quarter);
	}

	@Override
	public void insertCashFlowFirst(CashFlow cashFlow) {
		companyMapper.insertCashFlowFirst(cashFlow);
	}
	
	@Override
	public void insertIncomeStatementFirst(IncomeStatement incomeStatement) {
		companyMapper.insertIncomeStatementFirst(incomeStatement);
		
	}

	@Override
	public void insertBalanceSheetFirst(BalanceSheet balanceSheet) {
		companyMapper.insertBalanceSheetFirst(balanceSheet);
		
	}

	
	
	@Override
	public AverageSalary showAverageSalaryOfSale() {
		
		return companyMapper.showAverageSalaryOfSale();
	}

	@Override
	public AverageSalary showAverageSalaryOfWork() {
		
		return companyMapper.showAverageSalaryOfWork();
	}

	@Override
	public void insertCompanyStock(CompanyStock cs) {
		companyMapper.insertCompanyStock(cs);
		
	}

	@Override
	public void insertCompanyDuty(CompanyDuty cd) {
		companyMapper.insertCompanyDuty(cd);
		
	}

	@Override
	public List<WorkersSalary> selectCompanyWorkersSalary(int company_id, int quarter) {
		
		return companyMapper.selectCompanyWorkersSalary(company_id, quarter);
	}

	@Override
	public void insertCompanyWorkersSalary(WorkersSalary workersSalary) {
		
		companyMapper.insertCompanyWorkersSalary(workersSalary);
	}

	@Override
	public void updateCompanyWorkersSalary(WorkersSalary workersSalary) {
		
		companyMapper.updateCompanyWorkersSalary(workersSalary);
	}
	@Override
	public List<SalesSalary> selectCompanySalesSalary(int company_id, int quarter) {
		
		return companyMapper.selectCompanySalesSalary(company_id, quarter);
	}
	
	@Override
	public SalesSalary findCompanySalesSalary(int company_id, int quarter) {
		
		return companyMapper.findCompanySalesSalary(company_id, quarter);
	}

	@Override
	public void insertCompanySalesSalary(SalesSalary salesSalary) {
		
		companyMapper.insertCompanySalesSalary(salesSalary);
	}

	@Override
	public void updateCompanySalesSalary(SalesSalary salesSalary) {
		
		companyMapper.updateCompanySalesSalary(salesSalary);
	}
	
	
	@Override
	public List<DemandForecast> showDemandForecast() {
		return companyMapper.showDemandForecast();
	}

	@Override
	public void insertDemandForecast(int companyIdInt, int quarter, int demandAveragePhyt, int demandAverageWebt) {
		companyMapper.insertDemandForecast(companyIdInt, quarter, demandAveragePhyt, demandAverageWebt);
	}

	@Override
	public List<DemandForecast> selectDemandForecast(int companyIdInt, int quarter) {
		return companyMapper.selectDemandForecast(companyIdInt, quarter);
	}

	@Override
	public void updateDemandForecast(int companyIdInt, int quarter, int demandAveragePhyt, int demandAverageWebt) {
		companyMapper.updateDemandForecast(companyIdInt, quarter, demandAveragePhyt, demandAverageWebt);
	}

	@Override
	public void insertDemandForecast2(CompanyProduct companyProduct) {
		companyMapper.insertDemandForecast2(companyProduct);
	}

	@Override
	public List<CompanyProduct> selectDemandForecast2(int companyIdInt, int quarter) {
		return companyMapper.selectDemandForecast2(companyIdInt, quarter);
	}

	@Override
	public void updateDemandForecast2(CompanyProduct companyProduct) {
		companyMapper.updateDemandForecast2(companyProduct);
	}

	

	

	@Override
	public List<CompanyProduct> selectProductByCompanyIdAndQuarter(Integer companyId, Integer quarter) {
		
		return companyMapper.selectProductByCompanyIdAndQuarter(companyId, quarter);
	}

	@Override
	public void insertProductPrice(ProductPrice productPrice) {
		
		companyMapper.insertProductPrice(productPrice);
		
	}

	@Override
	public void updateProductPrice(int productId, int quarter, int price, int youji) {
		
		companyMapper.updateProductPrice(productId, quarter, price, youji);
		
	}

	@Override
	public List<ProductPrice> selectProductPrice(int company_id, int quarter) {
		
		return companyMapper.selectProductPrice(company_id, quarter);
	}

	@Override
	public List<ProductPrice> showTotalProductPrice(int company_id, int quarter) {
		
		
		return companyMapper.showTotalProductPrice(company_id, quarter);
	}

	@Override
	public List<CompanyProduct> showTotalCompanyProduct(int company_id, int quarter) {
		
		return companyMapper.showTotalCompanyProduct(company_id, quarter);
	}

	@Override
	public List<CompanyMedia> selectTotalCompanyMedia(int company_id, int quarter) {
		return companyMapper.selectTotalCompanyMedia(company_id, quarter);
	}

	@Override
	public List<CompanyMedia> selectCompanyMedia(int company_id, int quarter, int mediaId, int productId) {
		return companyMapper.selectCompanyMedia(company_id, quarter, mediaId, productId);
	}

	@Override
	public void insertCompanyMedia(CompanyMedia companyMedia) {
		companyMapper.insertCompanyMedia(companyMedia);
		
	}

	@Override
	public void updateCompanyMedia(CompanyMedia companyMedia) {
		companyMapper.updateCompanyMedia(companyMedia);
		
	}

	@Override
	public List<CompanyAdvertise> selectCompanyAdvertiseByProductId(int company_id, int quarter, int productId) {
		return companyMapper.selectCompanyAdvertiseByProductId(company_id, quarter, productId);
	}

	@Override
	public void insertCompanyAdvertise(CompanyAdvertise companyAdvertise) {
		companyMapper.insertCompanyAdvertise(companyAdvertise);
	}

	@Override
	public void updateCompanyAdvertise(CompanyAdvertise companyAdvertise) {
		companyMapper.updateCompanyAdvertise(companyAdvertise);
		
	}

	@Override
	public String selectCompanyReport(int company_id, int quarter) {
		return companyMapper.selectCompanyReport(company_id, quarter);
	}

	@Override
	public void insertCompanyReport(int company_id, int quarter, int buyReport) {
		companyMapper.insertCompanyReport(company_id, quarter, buyReport);
	}

	@Override
	public void updateCompanyReport(int company_id, int quarter, int buyReport) {
		companyMapper.updateCompanyReport(company_id, quarter, buyReport);
	}

	@Override
	public List<CompanyAdvertise> selectCompanyAdvertise(int company_id, int quarter) {
		
		return companyMapper.selectCompanyAdvertise(company_id, quarter);
	}

	@Override
	public List<AdvertiseInfo> selectAdvertsieById(int advertiseId) {
		return companyMapper.selectAdvertsieById(advertiseId);
	}
	
	@Override
	public List<OperationCapacity> showOperationCapacity() {
		return companyMapper.showOperationCapacity();
	}

	@Override
	public void insertOperationCapacity(int companyIdInt, int quarter, int operationCapacityInt,
			int workerProductivityInt) {
		companyMapper.insertOperationCapacity(companyIdInt,quarter,operationCapacityInt,workerProductivityInt);
		
	}

	@Override
	public List<OperationCapacity> selectOperationCapacity(int companyIdInt, int quarter) {
		return companyMapper.selectOperationCapacity(companyIdInt,quarter);
	}

	@Override
	public void updateOperationCapacity(int companyIdInt, int quarter, int operationCapacityInt,
			int workerProductivityInt) {
		companyMapper.updateOperationCapacity(companyIdInt,quarter,operationCapacityInt,workerProductivityInt);
		
	}
	
	//2017-10-16
	
	@Override
	public List<CompanyProduct> selectProductByCompanyIdAndQuarter(int company_id, int quarter) {
		return cashFlowMapper.selectProductByCompanyIdAndQuarter(company_id, quarter);
	}



	
	@Override
	public List<AllSalesSalaryVo> findSalaryofAllCompanysbyCompanyID(int companyId, int quarter) {
		Competition comp = new Competition();

		comp = CM.findCompetitionByCompanyId(companyId);

		List<Company> LC = new ArrayList<>();

		LC = companyMapper.showCompanyByCompetitionId(comp.getId());

		List<AllSalesSalaryVo> allVoList = new ArrayList<>();

		for (Company cc : LC) {
			List<SalesSalary> LSS = new ArrayList<>();
			LSS = companyMapper.selectCompanySalesSalary(cc.getId(), quarter);
			AllSalesSalaryVo ASSV = new AllSalesSalaryVo();
			System.out.println("Length of LC = " + LC.size());
			System.out.println("Length of LSS = " + LSS.size());
			System.out.println("cc = " + cc);
			System.out.println(cc.getName());

			System.out.println("cc.getId() = " + cc.getId());
			ASSV.setCompany(cc);
			ASSV.setSalesSalary(LSS.get(0));
			ASSV.setProductivity(1);
			allVoList.add(ASSV);
		}

		return allVoList;
	}
	
	// 查看业内工厂工人薪酬
		@Autowired
		private CompetitionMapper CW;

		@Override
		public List<AllWorkersSalaryVo> findWSalaryofAllCompanysbyCompanyID(int companyId, int quarter) {

			Competition comp = CW.findCompetitionByCompanyId(companyId);
			System.out.println("competition:" + comp);

			List<Company> LC = new ArrayList<>();

			LC = companyMapper.showCompanyByCompetitionId(comp.getId());

			List<AllWorkersSalaryVo> allVoList = new ArrayList<>();

			for (Company cc : LC) {
				List<WorkersSalary> LSS = new ArrayList<>();
				LSS = companyMapper.selectCompanyWorkersSalary(cc.getId(), quarter);
				AllWorkersSalaryVo ASSV = new AllWorkersSalaryVo();
				ASSV.setCompany(cc);
				ASSV.setWorkersSalary(LSS.get(0));
				ASSV.setProductivity(1);
				allVoList.add(ASSV);
			}

			return allVoList;
		}
		
		//库存控制
		
		@Override
		public void insertInventoryControl(CompanyProduct companyProduct) {
			companyMapper.insertInventoryControl(companyProduct);
		}

		@Override
		public List<CompanyProduct> selectInventoryControl(int companyIdInt, int quarter) {
			return companyMapper.selectInventoryControl(companyIdInt, quarter);
		}

		@Override
		public void updateInventoryControl(CompanyProduct companyProduct) {
			companyMapper.updateInventoryControl(companyProduct);
		}

		@Override
		public HirePeopleVo selectHirePeople(int companyId, int marketInt, int quarter) {
			return companyMapper.selectHirePeople(companyId, marketInt, quarter);
		}

		@Override
		public void updateHirePeopleById(HirePeople hirePeople) {
			companyMapper.updateHirePeopleById(hirePeople);
			
		}

		@Override
		public void insertHirePeople(HirePeople hirePeople) {
			companyMapper.insertHirePeople(hirePeople);
			
		}
		
		@Override
		public void updateCashFlowYanfa(float yanfa, int company_id, int quarter) {
			cashFlowMapper.updateCashFlowYanfa(yanfa, company_id, quarter);
		}

		@Override
		public CompanyMarket selectPhyCompanyMarket(int company_id, int quarter) {
			return cashFlowMapper.selectPhyCompanyMarket(company_id, quarter);
		}

		@Override
		public int selectOpenByMarketId(int id) {
			return cashFlowMapper.selectOpenByMarketId(id);
		}

		@Override
		public void updateCashFlowPhyMarket(float PhyMarket, int company_id, int quarter) {
			cashFlowMapper.updateCashFlowPhyMarket(PhyMarket, company_id, quarter);
		}
		
		@Override
		public CompanyMarket selectWebCompanyMarket(int company_id, int quarter) {
			return cashFlowMapper.selectWebCompanyMarket(company_id, quarter);
		}

		@Override
		public int selectWebOpenByMarketId(int id) {
			return cashFlowMapper.selectWebOpenByMarketId(id);
		}

		@Override
		public void updateCashFlowWebMarket(float WebMarket, int company_id, int quarter) {
			cashFlowMapper.updateCashFlowWebMarket(WebMarket, company_id, quarter);
		}

		@Override
		public int selectCapacity(int company_id, int quarter) {
			return cashFlowMapper.selectCapacity(company_id, quarter);
		}

		@Override
		public int selectInvestByCapacity(int capacity) {
			return cashFlowMapper.selectInvestByCapacity(capacity);
		}

		@Override
		public void updateCashFlowCapacity(float invest, int company_id, int quarter) {
			cashFlowMapper.updateCashFlowCapacity(invest, company_id, quarter);
		}

		@Override
		public FixedDeposit selectCunkuanLast(int company_id, int quarter) {
			return companyMapper.selectCunkuanLast(company_id, quarter);
		}

		@Override
		public void insertCunkuanLast(float cunkuanLast, int company_id, int quarter) {
			companyMapper.insertCunkuanLast(cunkuanLast, company_id, quarter);
		}

		@Override
		public int selectCunru(int company_id, int quarter) {
			return cashFlowMapper.selectCunru(company_id, quarter);
		}

		@Override
		public void updateCashFlowCunkuanPay(float cunru, int company_id, int quarter) {
			cashFlowMapper.updateCashFlowCunkuanPay(cunru, company_id, quarter);
		}

		@Override
		public void updateIncomeStatementYanfa(float yanfa, int company_id, int quarter) {
			cashFlowMapper.updateIncomeStatementYanfa(yanfa, company_id, quarter);
		}

		@Override
		public void updateIncomeStatementPhyMarket(float PhyMarket, int company_id, int quarter) {
			cashFlowMapper.updateIncomeStatementPhyMarket(PhyMarket, company_id, quarter);
		}

		@Override
		public void updateIncomeStatementWebMarket(float WebMarket, int company_id, int quarter) {
			cashFlowMapper.updateIncomeStatementWebMarket(WebMarket, company_id, quarter);
		}

		@Override
		public void updateIncomStatementLixi(float lixi, int company_id, int quarter) {
			cashFlowMapper.updateIncomStatementLixi(lixi, company_id, quarter);
		}

		@Override
		public int selectStockPrice(int company_id, int quarter) {
			return cashFlowMapper.selectStockPrice(company_id, quarter);
		}

		@Override
		public void updateCashFlowLixi(float lixi, int company_id, int quarter) {
			cashFlowMapper.updateCashFlowLixi(lixi, company_id, quarter);
		}

		@Override
		public void updateBalanceSheetCunKuan(float cunkuan, int company_id, int quarter) {
			cashFlowMapper.updateBalanceSheetCunKuan(cunkuan, company_id, quarter);
			
		}

		@Override
		public void updateBalanceSheetZiChan(float zichan, int company_id, int quarter) {
			cashFlowMapper.updateBalanceSheetZiChan(zichan, company_id, quarter);
		}

		@Override
		public void updateBalanceSheetGuBen(float guben, int company_id, int quarter) {
			cashFlowMapper.updateBalanceSheetGuBen(guben, company_id, quarter);
		}

		@Override
		public void updateBalanceSheetLiuCun(float liucun, int company_id, int quarter) {
			cashFlowMapper.updateBalanceSheetLiuCun(liucun, company_id, quarter);
		}

		@Override
		public void updateBalanceSheetHuoBi(float huobi, int company_id, int quarter) {
			
			cashFlowMapper.updateBalanceSheetHuoBi(huobi, company_id, quarter);
		}

		@Override
		public int selectPrice(int productId,int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectPrice(productId,quarter);
		}

		@Override
		public int selectDemandNum2(int productId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectDemandNum2(productId);
		}
		
		@Override
		public int selectDemandNum3(int productId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectDemandNum3(productId);
		}

		@Override
		public void updateCashFlowShouRu(int income, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowShouRu(income, company_id, quarter);
		}

		@Override
		public int selectTiQu(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectTiQu(company_id, quarter);
		}

		@Override
		public int selectCunKuanLast(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectCunKuanLast(company_id, quarter);
		}

		@Override
		public void updateCashFlowTiqu(int tiqu, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowTiqu(tiqu, company_id, quarter);
		}

		@Override
		public int selectYouJi(int productId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectYouJi(productId);
		}

		@Override
		public void updateCashFlowYouJi(int youji, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowYouJi(youji, company_id, quarter);
		}

		@Override
		public int selectReport(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectReport(company_id, quarter);
		}

		@Override
		public void updateCashFlowDiaoYan(int diaoyan, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowDiaoYan(diaoyan, company_id, quarter);
		}

		@Override
		public void updateCashFlowHuoYun(int huoyun, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowHuoYun(huoyun, company_id, quarter);
		}

		@Override
		public int selectSaleSalary(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectSaleSalary(company_id, quarter);
		}

		@Override
		public void updateCashFlowSalerPay(int saleSalary, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowSalerPay(saleSalary, company_id, quarter);
		}

		@Override
		public int selectRent(int marketId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectRent(marketId);
		}

		@Override
		public int selectWebRent(int marketId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectWebRent(marketId);
		}

		@Override
		public List<CompanyMedia> selectProductMedia(int productId, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectProductMedia(productId, quarter);
		}

		@Override
		public int selectMediaCost(int mediaId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectMediaCost(mediaId);
		}

		@Override
		public void updateCashFlowMediaCost(int mediaCost, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowMediaCost(mediaCost, company_id, quarter);
		}

		@Override
		public void updateIncomeShouRu(int income, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeShouRu(income, company_id, quarter);
		}

		@Override
		public void updateIncomeHuoYun(int huoyun, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeHuoYun(huoyun, company_id, quarter);
		}

		@Override
		public void updateIncomeDiaoYan(int diaoyan, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeDiaoYan(diaoyan, company_id, quarter);
		}

		@Override
		public void updateIncomeYouJi(int youji, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeYouJi(youji, company_id, quarter);
		}

		@Override
		public void updateIncomeGuangGao(int guanggao, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeGuangGao(guanggao, company_id, quarter);
		}

		@Override
		public CashFlow selectCashFlow(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectCashFlow(company_id, quarter);
		}

		@Override
		public BalanceSheet selectHuoBiLast(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectHuoBiLast(company_id, quarter);
		}

		@Override
		public void updateCashFlowResult(float lixi, float yanfa, float guanggao, float saler, float salesCenter,
				float salesCenterWeb, float diaoyan, float gongchang, float tiqu, float cunkuan, int company_id,
				int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowResult(lixi, yanfa, guanggao, saler, salesCenter, salesCenterWeb, diaoyan, gongchang, tiqu, cunkuan, company_id, quarter);
		}

		@Override
		public List<CashFlow> selectCashFlowResult(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectCashFlowResult(company_id, quarter);
		}

		@Override
		public void updateIncomeResult(float lixi, float yanfa, float guanggao, float saler, float salesCenter,
				float salesCenterWeb, float diaoyan, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeResult(lixi, yanfa, guanggao, saler, salesCenter, salesCenterWeb, diaoyan, company_id, quarter);
		}

		@Override
		public List<IncomeStatement> selectIncomeStatementResult(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectIncomeStatementResult(company_id, quarter);
		}

		@Override
		public List<BalanceSheet> selectBalanceSheetResult(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectBalanceSheetResult(company_id, quarter);
		}

		@Override
		public BalanceSheet selectBalanceSheet(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectBalanceSheet(company_id, quarter);
		}

		@Override
		public void updateBalanceSheetResult(float cunkuan, float zichan, float guben, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateBalanceSheetResult(cunkuan, zichan, guben, company_id, quarter);
		}

		@Override
		public void updateBalanceSheetResult2(float huobi, float liucun,float cunhuo, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateBalanceSheetResult2(huobi, liucun,cunhuo, company_id, quarter);
		}

		@Override
		public void insertStock(int company_id, int quarter, String stock_type, String owner, int stockNumber,
				int stockPrice, int totalPrice) {
			// TODO Auto-generated method stub
			cashFlowMapper.insertStock(company_id, quarter, stock_type, owner, stockNumber, stockPrice, totalPrice);
		}

		@Override
		public int selectKucunNum2(int productId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectKucunNum2(productId);
		}

		@Override
		public void updateCashFlowKuCun(int kucun, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowKuCun(kucun, company_id, quarter);
		}

		@Override
		public ProductPrice showPrice(int productId, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.showPrice(productId, quarter);
		}

		@Override
		public CompanyReport showReport(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.showReport(company_id, quarter);
		}

		@Override
		public void updateIncomeYingYe(int yingyeCost, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeYingYe(yingyeCost, company_id, quarter);
		}

		@Override
		public void updateIncomeSaler(int saler, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeSaler(saler, company_id, quarter);
		}

		@Override
		public void updateIncomeKuCun(int kucun, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeKuCun(kucun, company_id, quarter);
		}

		@Override
		public CompanyCapacity showCapacity(int company_id, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.showCapacity(company_id, quarter);
		}

		@Override
		public int selectProductCost(int productId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectProductCost(productId);
		}

		@Override
		public void updateCashFlowShengChan(float shengchan, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowShengChan(shengchan, company_id, quarter);
		}

		@Override
		public int selectKucunNum3(int productId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectKucunNum3(productId);
		}

		@Override
		public int selectSaleResult(int productId, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectSaleResult(productId, quarter);
		}

		@Override
		public int selectKuCunResult(int productId, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectKuCunResult(productId, quarter);
		}

		@Override
		public void updateCashFlowResult2(float incomeSum, float youjiSum, float shengchanSum, float huoyunSum,
				float kucunSum, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateCashFlowResult2(incomeSum, youjiSum, shengchanSum, huoyunSum, kucunSum, company_id, quarter);
		}

		@Override
		public void insertCashFlowResult(int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.insertCashFlowResult(company_id, quarter);
		}

		@Override
		public void insertIncomeResult(int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.insertIncomeResult(company_id, quarter);
		}

		@Override
		public void updateIncomeResult2(float incomeSum, float yingyeSum, float youjiSum, float huoyunSum, float kucunSum,
				int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateIncomeResult2(incomeSum, yingyeSum, youjiSum, huoyunSum, kucunSum, company_id, quarter);
		}

		@Override
		public void insertBalanceResult(int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.insertBalanceResult(company_id, quarter);
		}

		@Override
		public void updateBalanceSheetCunHuo(int cunhuo, int company_id, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.updateBalanceSheetCunHuo(cunhuo, company_id, quarter);
		}

		@Override
		public CompanyCapacity selectCompanyCapacity(int companyId, int quarter) {
			// TODO Auto-generated method stub
			return companyMapper.selectCompanyCapacity(companyId, quarter);
		}
		
		@Override
		public ProductPrice selectProductPrice2(int productId, int quarter) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectProductPrice2(productId, quarter);
		}

		@Override
		public void insertProductPrice2(int productId, int companyId, int quarter) {
			// TODO Auto-generated method stub
			cashFlowMapper.insertProductPrice2(productId, companyId, quarter);
		}
		
		@Override
		public CompanyProduct selectCompanyProduct(int productId) {
			// TODO Auto-generated method stub
			return cashFlowMapper.selectCompanyProduct(productId);
		}

		@Override
		public void insertHirePeopleOnline(HirePeopleOnline hirePeopleOnline) {
			companyMapper.insertHirePeopleOnline(hirePeopleOnline);
		}

		@Override
		public HirePeopleOnline checkHirePeopleOnline(HirePeopleOnline hirePeopleOnline) {
			
			return companyMapper.checkHirePeopleOnline(hirePeopleOnline);
		}

		@Override
		public void deleteHirePeopleOnline(HirePeopleOnline hirePeopleOnline) {
			companyMapper.deleteHirePeopleOnline(hirePeopleOnline);
			
		}

		@Override
		public void deleteHirePeople(HirePeople hirePeople) {
			companyMapper.deleteHirePeople(hirePeople);
		}

		@Override
		public HirePeople checkHirePeople(HirePeople hirePeople) {
			// TODO Auto-generated method stub
			return companyMapper.checkHirePeople(hirePeople);
		}

		@Override
		public HirePeopleOnlineVo selectHirePeopleOnline(int companyId, int marketInt, int quarter) {
			// TODO Auto-generated method stub
			return companyMapper.selectHirePeopleOnline(companyId, marketInt, quarter);
		}

		@Override
		public void updateHirePeopleOnlineById(HirePeopleOnline hirePeopleOnline) {
			companyMapper.updateHirePeopleOnlineById(hirePeopleOnline);
			
		}
		
		@Override
		public List<ProductMarketShare> selectProductMarketShare(Integer id) {
			// TODO Auto-generated method stub
			return companyMapper.selectProductMarketShare(id);
		}

		@Override
		public List<CompanyInvestment> selectCompanyInvestment(int companyId, int quarter) {
			// TODO Auto-generated method stub
			return companyMapper.selectCompanyInvestment(companyId, quarter);
		}

		
		
		
		
		
}
