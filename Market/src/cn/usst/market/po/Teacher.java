package cn.usst.market.po;

public class Teacher {
	
	private int id;
	private String name;
	private String email;
	private String password;
	private String org;
	private String position;
	private String phone;
	private String address;
	private String postcode;
	private String picture;
	private String country;
	private String city;
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", org=" + org
				+ ", position=" + position + ", phone=" + phone + ", address=" + address + ", postcode=" + postcode
				+ ", picture=" + picture + ", country=" + country + ", city=" + city + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getOrg() {
		return org;
	}
	public void setOrg(String org) {
		this.org = org;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
