package cn.usst.market.po;

public class File {
	private Integer id;
	private String name;
	private String path;
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
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "File [id=" + id + ", name=" + name + ", path=" + path + "]";
	}
}
