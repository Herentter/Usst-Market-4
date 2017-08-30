package cn.usst.market.mapper;

import java.util.List;

import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.CompanyProduct;
import cn.usst.market.po.CompanyRule;
import cn.usst.market.po.CompanyRuleInfo;
import cn.usst.market.po.CompanyStrategy;
import cn.usst.market.po.Competition;
import cn.usst.market.po.CompetitionQuarterTime;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.Member;
import cn.usst.market.po.MemberDutyCustom;
import cn.usst.market.po.PersonalGoal;
import cn.usst.market.po.PersonalGoalInfo;
import cn.usst.market.po.ProductInfo;
import cn.usst.market.po.StrategyInfo;
import cn.usst.market.po.TeacherQueryVo;


public interface TeacherPolicyDecisionMapper {
	public List<MemberDutyCustom> findMemberDutyList(Integer id);
	
	public CompanyStrategy findCompanyGoalAndPolicy(IdQuarter idQuarter);
	
	public StrategyInfo findStrategyById(Integer id);
	
	public CompanyRule findCompanyRule(IdQuarter idQuarter);
	
	public CompanyRuleInfo findRuleInfoById(Integer id);
	
	//查找个人目标
	public PersonalGoal findPersonalGoalByMemberId(Integer id);
	public PersonalGoalInfo findPersonalGoalInfoById(Integer id);
	
	//查找设计的品牌
	public ProductInfo findProductInfoById(Integer id);
	public List<CompanyProduct> findProductsByCompanyIdQuarter(IdQuarter idQuarter);
	
	//找开始实体市场
	public CompanyMarket findCompanyPhyMarketByIdQuarter(IdQuarter idQuarter);
	//找开设网络市场
	public CompanyMarket findCompanyNetMarketByIdQuarter(IdQuarter idQuarter);
	
	//找市场具体信息
	public MarketInfo findMarketInfoById(Integer id);
	
	//找季度增加的产能
	public int findAddCapacityByIdQuarter(IdQuarter idQuarter);
	
	//找前n季度固定产能之和
	public int findTotalCapacityByIdQuarter(IdQuarter idQuarter);
	
}
