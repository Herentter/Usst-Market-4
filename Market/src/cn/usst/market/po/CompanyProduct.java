package cn.usst.market.po;

public class CompanyProduct {
    private Integer id;

    private Integer companyId;

    private Integer quarter;
    
    private String name;

    private String detail;

    private Integer cost;
    
    private String type;
    
    private Integer demandNumTwo;
    
    private Integer demandNumThree;
    
    private Integer demandNumFour;
    
    private Integer demandNumFive;
    
    private Integer inventoryMaxTwo;
    
    private Integer inventoryMaxThree;
    
    private Integer inventoryMaxFour;
    
    private Integer inventoryMaxFive;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getDemandNumTwo() {
		return demandNumTwo;
	}

	public void setDemandNumTwo(Integer demandNumTwo) {
		this.demandNumTwo = demandNumTwo;
	}

	public Integer getDemandNumThree() {
		return demandNumThree;
	}

	public void setDemandNumThree(Integer demandNumThree) {
		this.demandNumThree = demandNumThree;
	}

	public Integer getDemandNumFour() {
		return demandNumFour;
	}

	public void setDemandNumFour(Integer demandNumFour) {
		this.demandNumFour = demandNumFour;
	}

	public Integer getDemandNumFive() {
		return demandNumFive;
	}

	public void setDemandNumFive(Integer demandNumFive) {
		this.demandNumFive = demandNumFive;
	}

	public Integer getInventoryMaxTwo() {
		return inventoryMaxTwo;
	}

	public void setInventoryMaxTwo(Integer inventoryMaxTwo) {
		this.inventoryMaxTwo = inventoryMaxTwo;
	}

	public Integer getInventoryMaxThree() {
		return inventoryMaxThree;
	}

	public void setInventoryMaxThree(Integer inventoryMaxThree) {
		this.inventoryMaxThree = inventoryMaxThree;
	}

	public Integer getInventoryMaxFour() {
		return inventoryMaxFour;
	}

	public void setInventoryMaxFour(Integer inventoryMaxFour) {
		this.inventoryMaxFour = inventoryMaxFour;
	}

	public Integer getInventoryMaxFive() {
		return inventoryMaxFive;
	}

	public void setInventoryMaxFive(Integer inventoryMaxFive) {
		this.inventoryMaxFive = inventoryMaxFive;
	}
	
	public Integer getShengChanCost(int num,int cost){
		int costSum=0;
		if(num<=300){
			costSum=(int)(cost*330/((float)num*Math.log(5)));
		}else if(300<num&&num<=500){
			costSum=(int)(2.25*cost/Math.log((float)num/(float)65));
		}else if(500<num&&num<=1000){
			costSum=(int)(2.4*cost/Math.log((float)num/(float)65));
		}else if(1000<num&&num<=5000){
			costSum=(int)(3*cost/Math.log((float)num/(float)65));
		}
		return costSum;
	}
    
}