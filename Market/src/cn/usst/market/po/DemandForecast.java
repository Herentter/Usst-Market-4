package cn.usst.market.po;

public class DemandForecast {
    private Integer id;

    private Integer companyId;

    private Integer quarter;
    private Integer salesNumPhy;
    private Integer salesNumWeb;
    private Integer demandAveragePhy;
    private Integer demandAverageWeb;
    
    
   
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
	public Integer getQuarter() {
		return quarter;
	}
	public void setQuarter(Integer quarter) {
		this.quarter = quarter;
	}
	
	
	
	public Integer getSalesNumPhy() {
		return salesNumPhy;
	}
	public void setSalesNumPhy(Integer salesNumPhy) {
		this.salesNumPhy = salesNumPhy;
	}
	public Integer getSalesNumWeb() {
		return salesNumWeb;
	}
	public void setSalesNumWeb(Integer salesNumWeb) {
		this.salesNumWeb = salesNumWeb;
	}
	public Integer getDemandAveragePhy() {
		return demandAveragePhy;
	}
	public void setDemandAveragePhy(Integer demandAveragePhy) {
		this.demandAveragePhy = demandAveragePhy;
	}
	public Integer getDemandAverageWeb() {
		return demandAverageWeb;
	}
	public void setDemandAverageWeb(Integer demandAverageWeb) {
		this.demandAverageWeb = demandAverageWeb;
	}
	
}
    
