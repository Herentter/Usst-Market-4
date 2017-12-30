package cn.usst.market.po;

/**
 * @author 陈立阳
 *         Created by 陈立阳 on 2017/11/4.
 */
public class Profit {
    private Integer companyId;
    private Integer productId;
    private String productName;
    private Integer salesproceeds;
    private Integer postoffice;
    private Integer costofselling;
    private Integer adofdesign;
    private Integer adofbrand;
    private Integer sale;
    private Integer grossmargin;//毛利
    private Integer costofbrand;//品牌费用
    private Integer profit;//利润
    private String profitMargin;//利润率
    private String unitProfit;//单位利润

    public String getProfitMargin() {
        return profitMargin;
    }

    public void setProfitMargin(String profitMargin) {
        this.profitMargin = profitMargin;
    }

    public String getUnitProfit() {
        return unitProfit;
    }

    public void setUnitProfit(String unitProfit) {
        this.unitProfit = unitProfit;
    }

    public Integer getProfit() {
        return profit;
    }

    public void setProfit(Integer profit) {
        this.profit = profit;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getSalesproceeds() {
        return salesproceeds;
    }

    public void setSalesproceeds(Integer salesproceeds) {
        this.salesproceeds = salesproceeds;
    }

    public Integer getPostoffice() {
        return postoffice;
    }

    public void setPostoffice(Integer postoffice) {
        this.postoffice = postoffice;
    }

    public Integer getCostofselling() {
        return costofselling;
    }

    public void setCostofselling(Integer costofselling) {
        this.costofselling = costofselling;
    }

    public Integer getAdofdesign() {
        return adofdesign;
    }

    public void setAdofdesign(Integer adofdesign) {
        this.adofdesign = adofdesign;
    }

    public Integer getAdofbrand() {
        return adofbrand;
    }

    public void setAdofbrand(Integer adofbrand) {
        this.adofbrand = adofbrand;
    }

    public Integer getGrossmargin() {
        return grossmargin;
    }

    public void setGrossmargin(Integer grossmargin) {
        this.grossmargin = grossmargin;
    }

    public Integer getCostofbrand() {
        return costofbrand;
    }

    public void setCostofbrand(Integer costofbrand) {
        this.costofbrand = costofbrand;
    }

    public Integer getSale() {
        return sale;
    }

    public void setSale(Integer sale) {
        this.sale = sale;
    }
}
