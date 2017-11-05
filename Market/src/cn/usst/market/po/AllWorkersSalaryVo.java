package cn.usst.market.po;

public class AllWorkersSalaryVo {
	private Company company;
	private int productivity;
	private WorkersSalary workersSalary;
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public int getProductivity() {
		return productivity;
	}
	public void setProductivity(int productivity) {
		this.productivity = productivity;
	}
	public WorkersSalary getWorkersSalary() {
		return workersSalary;
	}
	public void setWorkersSalary(WorkersSalary workersSalary) {
		this.workersSalary = workersSalary;
	}
	}