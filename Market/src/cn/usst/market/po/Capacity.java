package cn.usst.market.po;

public class Capacity {
	private Integer id;
	private Integer number;
	private Integer total_number;
	private float invest;
	private float total_invest;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getTotal_number() {
		return total_number;
	}
	public void setTotal_number(Integer total_number) {
		this.total_number = total_number;
	}
	public float getInvest() {
		return invest;
	}
	public void setInvest(float invest) {
		this.invest = invest;
	}
	public float getTotal_invest() {
		return total_invest;
	}
	public void setTotal_invest(float total_invest) {
		this.total_invest = total_invest;
	}
	@Override
	public String toString() {
		return "Capacity [id=" + id + ", number=" + number + ", total_number=" + total_number + ", invest=" + invest
				+ ", total_invest=" + total_invest + "]";
	}
	
}
