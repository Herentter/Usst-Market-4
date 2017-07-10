package cn.usst.market.po;

public class ProductInfo {
	private int id;
	private String detail;
	private String title;
	private float price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "ProductInfo [id=" + id + ", detail=" + detail + ", title=" + title + ", price=" + price + "]";
	}
	
}
