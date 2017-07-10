package cn.usst.market.po;

public class MarketInfo {
	private Integer id;
	private String city;
	private Integer practical;
	private Integer perfect;
	private Integer business;
	private Integer web_practical;
	private Integer web_perfect;
	private Integer web_business;
	private Integer open;
	private Integer rent;
	private Integer web_open;
	private Integer web_rent;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Integer getPractical() {
		return practical;
	}
	public void setPractical(Integer practical) {
		this.practical = practical;
	}
	public Integer getPerfect() {
		return perfect;
	}
	public void setPerfect(Integer perfect) {
		this.perfect = perfect;
	}
	public Integer getBusiness() {
		return business;
	}
	public void setBusiness(Integer business) {
		this.business = business;
	}
	public Integer getWeb_practical() {
		return web_practical;
	}
	public void setWeb_practical(Integer web_practical) {
		this.web_practical = web_practical;
	}
	public Integer getWeb_perfect() {
		return web_perfect;
	}
	public void setWeb_perfect(Integer web_perfect) {
		this.web_perfect = web_perfect;
	}
	public Integer getWeb_business() {
		return web_business;
	}
	public void setWeb_business(Integer web_business) {
		this.web_business = web_business;
	}
	public Integer getOpen() {
		return open;
	}
	public void setOpen(Integer open) {
		this.open = open;
	}
	public Integer getRent() {
		return rent;
	}
	public void setRent(Integer rent) {
		this.rent = rent;
	}
	public Integer getWeb_open() {
		return web_open;
	}
	public void setWeb_open(Integer web_open) {
		this.web_open = web_open;
	}
	public Integer getWeb_rent() {
		return web_rent;
	}
	public void setWeb_rent(Integer web_rent) {
		this.web_rent = web_rent;
	}
	@Override
	public String toString() {
		return "MarketInfo [id=" + id + ", city=" + city + ", practical=" + practical + ", perfect=" + perfect
				+ ", business=" + business + ", web_practical=" + web_practical + ", web_perfect=" + web_perfect
				+ ", web_business=" + web_business + ", open=" + open + ", rent=" + rent + ", web_open=" + web_open
				+ ", web_rent=" + web_rent + "]";
	}
	
}
