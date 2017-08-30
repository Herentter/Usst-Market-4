package cn.usst.market.po;

public class CompanyProduct {
    private Integer id;

    private Integer companyId;

    private String name;

    private String type;

    private Integer bibei;

    private Integer yunying;

    private Integer lanya;

    private Integer pingmu;

    private Integer chukong;

    private Integer cpu;

    private Integer jishen;

    private Integer paizhao;

    private Integer texing;
    
    private Integer dianchi;

    private Integer qita;

    private Integer cost;

    private Integer quarter;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getBibei() {
        return bibei;
    }

    public void setBibei(Integer bibei) {
        this.bibei = bibei;
    }

    public Integer getYunying() {
        return yunying;
    }

    public void setYunying(Integer yunying) {
        this.yunying = yunying;
    }

    public Integer getLanya() {
        return lanya;
    }

    public void setLanya(Integer lanya) {
        this.lanya = lanya;
    }

    public Integer getPingmu() {
        return pingmu;
    }

    public void setPingmu(Integer pingmu) {
        this.pingmu = pingmu;
    }

    public Integer getChukong() {
        return chukong;
    }

    public void setChukong(Integer chukong) {
        this.chukong = chukong;
    }

    public Integer getCpu() {
        return cpu;
    }

    public void setCpu(Integer cpu) {
        this.cpu = cpu;
    }

    public Integer getJishen() {
        return jishen;
    }

    public void setJishen(Integer jishen) {
        this.jishen = jishen;
    }

    public Integer getPaizhao() {
        return paizhao;
    }

    public void setPaizhao(Integer paizhao) {
        this.paizhao = paizhao;
    }

    public Integer getTexing() {
        return texing;
    }

    public void setTexing(Integer texing) {
        this.texing = texing;
    }
    
    public Integer getDianchi() {
        return dianchi;
    }

    public void setDianchi(Integer dianchi) {
        this.dianchi = dianchi;
    }

    public Integer getQita() {
        return qita;
    }

    public void setQita(Integer qita) {
        this.qita = qita;
    }

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    public Integer getQuarter() {
        return quarter;
    }

    public void setQuarter(Integer quarter) {
        this.quarter = quarter;
    }
}