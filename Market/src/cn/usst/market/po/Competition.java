package cn.usst.market.po;

import java.util.Date;

public class Competition {
	private int id;
	private String license;
	private int admin_id;
	private int teacher_id;
	private int number;
	private int team_num;
	private String name;
	private int quater;
	private int team_max_memb;
	private String address;
	private Date date;
	private Date validity;
	
	public Competition() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Competition(int id, String license, int admin_id, int teacher_id, int number, int team_num, String name,
			int quater, int team_max_memb, String address, Date date, Date validity) {
		super();
		this.id = id;
		this.license = license;
		this.admin_id = admin_id;
		this.teacher_id = teacher_id;
		this.number = number;
		this.team_num = team_num;
		this.name = name;
		this.quater = quater;
		this.team_max_memb = team_max_memb;
		this.address = address;
		this.date = date;
		this.validity = validity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getTeam_num() {
		return team_num;
	}
	public void setTeam_num(int team_num) {
		this.team_num = team_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuater() {
		return quater;
	}
	public void setQuater(int quater) {
		this.quater = quater;
	}
	public int getTeam_max_memb() {
		return team_max_memb;
	}
	public void setTeam_max_memb(int team_max_memb) {
		this.team_max_memb = team_max_memb;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getValidity() {
		return validity;
	}
	public void setValidity(Date validity) {
		this.validity = validity;
	}
	@Override
	public String toString() {
		return "Competition [id=" + id + ", license=" + license + ", admin_id=" + admin_id + ", teacher_id="
				+ teacher_id + ", number=" + number + ", team_num=" + team_num + ", name=" + name + ", quater=" + quater
				+ ", team_max_memb=" + team_max_memb + ", address=" + address + ", date=" + date + ", validity="
				+ validity + "]";
	}
	
}
