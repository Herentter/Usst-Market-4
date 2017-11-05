package cn.usst.market.po;

public class StockLevelVo {
	private CompanyProduct companyProducts;
	private Integer need;
	private Integer sale;
	private Integer stockoun;
	private Integer stock;
	
	
	
	public Integer getNeed() {
		return need;
	}
	public void setNeed(Integer need) {
		this.need = need;
	}
	public Integer getSale() {
		return sale;
	}
	public void setSale(Integer sale) {
		this.sale = sale;
	}
	public Integer getStockoun() {
		return stockoun;
	}
	public void setStockoun(Integer stockoun) {
		this.stockoun = stockoun;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public CompanyProduct getCompanyProducts() {
		return companyProducts;
	}
	public void setCompanyProducts(CompanyProduct companyProducts) {
		this.companyProducts = companyProducts;
	}
	
}