package cn.usst.market.po;

public class Product {
	private int id;
	private int company_id;
	private String name;
	private int bibei;
	private int yunying;
	private int lanya;
	private int pingmu;
	private int chukong;
	private int cpu;
	private int jishen;
	private int paizhao;
	private int texing;
	private int qita;
	private int cost;
	private int quater;
	private String type;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBibei() {
		return bibei;
	}

	public void setBibei(int bibei) {
		this.bibei = bibei;
	}

	public int getYunying() {
		return yunying;
	}

	public void setYunying(int yunying) {
		this.yunying = yunying;
	}

	public int getLanya() {
		return lanya;
	}

	public void setLanya(int lanya) {
		this.lanya = lanya;
	}

	public int getPingmu() {
		return pingmu;
	}

	public void setPingmu(int pingmu) {
		this.pingmu = pingmu;
	}

	public int getChukong() {
		return chukong;
	}

	public void setChukong(int chukong) {
		this.chukong = chukong;
	}

	public int getCpu() {
		return cpu;
	}

	public void setCpu(int cpu) {
		this.cpu = cpu;
	}

	public int getJishen() {
		return jishen;
	}

	public void setJishen(int jishen) {
		this.jishen = jishen;
	}

	public int getPaizhao() {
		return paizhao;
	}

	public void setPaizhao(int paizhao) {
		this.paizhao = paizhao;
	}

	public int getTexing() {
		return texing;
	}

	public void setTexing(int texing) {
		this.texing = texing;
	}

	public int getQita() {
		return qita;
	}

	public void setQita(int qita) {
		this.qita = qita;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public int getQuater() {
		return quater;
	}

	public void setQuater(int quater) {
		this.quater = quater;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", company_id=" + company_id + ", name=" + name + ", bibei=" + bibei + ", yunying="
				+ yunying + ", lanya=" + lanya + ", pingmu=" + pingmu + ", chukong=" + chukong + ", cpu=" + cpu
				+ ", jishen=" + jishen + ", paizhao=" + paizhao + ", texing=" + texing + ", qita=" + qita + ", cost="
				+ cost + ", quater=" + quater + ", type=" + type + "]";
	}
}
