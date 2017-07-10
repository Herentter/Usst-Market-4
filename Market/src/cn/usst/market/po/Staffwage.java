package cn.usst.market.po;

public class Staffwage {
	private Integer id;
	private Integer competition_id;
	private Integer company_id;
	private String address;
	private float salary;
	private float iahf;
	private String voction;
	private float welfare;
	private float pension;
	private Integer quarter;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	public float getIahf() {
		return iahf;
	}
	public void setIahf(float iahf) {
		this.iahf = iahf;
	}
	public String getVoction() {
		return voction;
	}
	public void setVoction(String voction) {
		this.voction = voction;
	}
	public float getWelfare() {
		return welfare;
	}
	public void setWelfare(float welfare) {
		this.welfare = welfare;
	}
	public float getPension() {
		return pension;
	}
	public void setPension(float pension) {
		this.pension = pension;
	}
	public Integer getQuarter() {
		return quarter;
	}
	public void setQuarter(Integer quarter) {
		this.quarter = quarter;
	}
	@Override
	public String toString() {
		return "Staffwage [id=" + id + ", competition_id=" + competition_id + ", company_id=" + company_id
				+ ", address=" + address + ", salary=" + salary + ", iahf=" + iahf + ", voction=" + voction
				+ ", welfare=" + welfare + ", pension=" + pension + ", quarter=" + quarter + "]";
	}
	
}
