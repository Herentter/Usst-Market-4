package cn.usst.market.po;

public class ProductPrice {
    private Integer id;

    private Integer productId;

    private Integer companyId;

    private Integer quarter;

    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public Integer getQuarter() {
		return quarter;
	}

	public void setQuarter(Integer quarter) {
		this.quarter = quarter;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getYouji() {
		return youji;
	}

	public void setYouji(Integer youji) {
		this.youji = youji;
	}

	private Integer price;

    private Integer youji;


    
}