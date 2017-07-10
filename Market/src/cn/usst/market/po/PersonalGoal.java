package cn.usst.market.po;

public class PersonalGoal {
	private Integer id;
	private String detail;
	private String title;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "PersonalGoal [id=" + id + ", detail=" + detail + ", title=" + title + "]";
	}
	
}
