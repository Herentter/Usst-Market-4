package cn.usst.market.po;

public class Goods {
	private Integer id;
	private String name;
	private String num;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", num=" + num + "]";
	}

}