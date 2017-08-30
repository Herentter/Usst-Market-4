package cn.usst.market.po;

import java.util.List;

public class KeyDecisionVo {
	
	private Company company;
	
	private CompanyStrategy companyStrategy;
	
	private List<CompanyProduct> companyProductList;
	
	private List<MarketInfo> phyMarketList;
	
	private List<MarketInfo> netMarketList;
	
	private int memberCount;
	
	private int fixedCapacity;
	
	private int addCapacity;
	

	public int getAddCapacity() {
		return addCapacity;
	}

	public void setAddCapacity(int addCapacity) {
		this.addCapacity = addCapacity;
	}

	public List<MarketInfo> getPhyMarketList() {
		return phyMarketList;
	}

	public void setPhyMarketList(List<MarketInfo> phyMarketList) {
		this.phyMarketList = phyMarketList;
	}

	public List<MarketInfo> getNetMarketList() {
		return netMarketList;
	}

	public void setNetMarketList(List<MarketInfo> netMarketList) {
		this.netMarketList = netMarketList;
	}

	

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public CompanyStrategy getCompanyStrategy() {
		return companyStrategy;
	}

	public void setCompanyStrategy(CompanyStrategy companyStrategy) {
		this.companyStrategy = companyStrategy;
	}

	public List<CompanyProduct> getCompanyProductList() {
		return companyProductList;
	}

	public void setCompanyProductList(List<CompanyProduct> companyProductList) {
		this.companyProductList = companyProductList;
	}

	public int getMemberCount() {
		return memberCount;
	}

	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}

	public int getFixedCapacity() {
		return fixedCapacity;
	}

	public void setFixedCapacity(int fixedCapacity) {
		this.fixedCapacity = fixedCapacity;
	}
	
	
}
