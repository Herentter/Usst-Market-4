package cn.usst.market.po;

public class ProductMarketShare {
	private int id;
	private int competitionId;
	private int companyId;
	private int productId;
	private int quarter;
	private String productType;
	private double marketShare;//产品市场份额
	private int need;//产品需求量
	private int sale;//产品销售量
	private int stockoun;//产品脱销
	private int stock;//库存
	private int isPhy;//是否实体销售中心
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCompetitionId() {
		return competitionId;
	}
	public void setCompetitionId(int competitionId) {
		this.competitionId = competitionId;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuarter() {
		return quarter;
	}
	public void setQuarter(int quarter) {
		this.quarter = quarter;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public double getMarketShare() {
		return marketShare;
	}
	public void setMarketShare(double marketShare) {
		this.marketShare = marketShare;
	}
	public int getNeed() {
		return need;
	}
	public void setNeed(int need) {
		this.need = need;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getStockoun() {
		return stockoun;
	}
	public void setStockoun(int stockoun) {
		this.stockoun = stockoun;
	}
	public int getIsPhy() {
		return isPhy;
	}
	public void setIsPhy(int isPhy) {
		this.isPhy = isPhy;
	}
	
	
}
