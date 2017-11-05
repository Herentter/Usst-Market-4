package cn.usst.market.po;

public class EveryProductMarketShareVo {
	String productName;
	String companyName;
	String type;
	double marketShare;
	int need;
	int price;
	
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	
	
}
