package cn.usst.market.po;

public class CompanyMarket {
	private int id;
	private int companyId;
	private String marketId;
	private int idPhy;
	private int quarter;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getMarketId() {
		return marketId;
	}
	public void setMarketId(String marketId) {
		this.marketId = marketId;
	}
	public int getIdPhy() {
		return idPhy;
	}
	public void setIdPhy(int idPhy) {
		this.idPhy = idPhy;
	}
	public int getQuarter() {
		return quarter;
	}
	public void setQuarter(int quarter) {
		this.quarter = quarter;
	}
	
}
