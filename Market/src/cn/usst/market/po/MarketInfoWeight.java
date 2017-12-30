package cn.usst.market.po;

public class MarketInfoWeight {
    private Integer id;

    private String cityName;

    private Float perfect;

    private Float business;

    private Float practical;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName == null ? null : cityName.trim();
    }

    public Float getPerfect() {
        return perfect;
    }

    public void setPerfect(Float perfect) {
        this.perfect = perfect;
    }

    public Float getBusiness() {
        return business;
    }

    public void setBusiness(Float business) {
        this.business = business;
    }

    public Float getPractical() {
        return practical;
    }

    public void setPractical(Float practical) {
        this.practical = practical;
    }
}