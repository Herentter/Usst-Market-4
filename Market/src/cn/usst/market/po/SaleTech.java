package cn.usst.market.po;

public class SaleTech {
	private Integer id;
	private String type;
	private String name;
	private String email;
	private String topic;
	private String content;
	private String importance;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImportance() {
		return importance;
	}
	public void setImportance(String importance) {
		this.importance = importance;
	}
	@Override
	public String toString() {
		return "SaleTech [id=" + id + ", type=" + type + ", name=" + name + ", email=" + email + ", topic=" + topic
				+ ", content=" + content + ", importance=" + importance + "]";
	}
	
}
