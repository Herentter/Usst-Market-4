package cn.usst.market.po;

public class ProductPrice {

    private Integer productId;

    private Integer companyId;

    private Integer price;

    private Integer youji;

    private String companyName;
    private String productName;

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getYouji() {
        return youji;
    }

    public void setYouji(Integer youji) {
        this.youji = youji;
    }


}