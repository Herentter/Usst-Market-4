package cn.usst.market.po;

public class Innerstock {
	private Integer id;
	private Integer competition_id;
	private Integer company_id;
	private Integer quarter;
	private String type;
	private String owner_name;
	private Integer amount;
	private float price;
	private float total_price;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCompetition_id() {
		return competition_id;
	}
	public void setCompetition_id(Integer competition_id) {
		this.competition_id = competition_id;
	}
	public Integer getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}
	public Integer getQuarter() {
		return quarter;
	}
	public void setQuarter(Integer quarter) {
		this.quarter = quarter;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getTotal_price() {
		return total_price;
	}
	public void setTotal_price(float total_price) {
		this.total_price = total_price;
	}
	@Override
	public String toString() {
		return "Innerstock [id=" + id + ", competition_id=" + competition_id + ", company_id=" + company_id
				+ ", quarter=" + quarter + ", type=" + type + ", owner_name=" + owner_name + ", amount=" + amount
				+ ", price=" + price + ", total_price=" + total_price + "]";
	}
	
}
