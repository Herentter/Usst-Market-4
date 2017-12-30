package cn.usst.market.po;

public class GlobalPathNeedsVo {

	private Company c;
	
	private ProductMarketShare pms;
	
	private CompanyProduct cp;
	
	private float rate;

	public CompanyProduct getCp() {
		return cp;
	}

	public void setCp(CompanyProduct cp) {
		this.cp = cp;
	}

	public float getRate() {
		return rate;
	}

	public void setRate(float rate) {
		this.rate = rate;
	}

	public Company getC() {
		return c;
	}

	public void setC(Company c) {
		this.c = c;
	}

	public ProductMarketShare getPms() {
		return pms;
	}

	public void setPms(ProductMarketShare pms) {
		this.pms = pms;
	}
}
