package cn.usst.market.po;

import java.util.List;

public class Page<T> {
	private int currentPage;// 当前页
	private int pageCount ;// 每页显示的记录数
	private int totalCount;// 总记录数
	private int totalPage;// 总页数=总记录数/每页要显示的记录数
	private List<T> page;// 页面要显示的数据	

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getPage() {
		return page;
	}

	public void setPage(List<T> page) {
		this.page = page;
	}

	@Override
	public String toString() {
		return "Page [currentPage=" + currentPage + ", pageCount=" + pageCount + ", totalCount=" + totalCount
				+ ", totalPage=" + totalPage + ", page=" + page + "]";
	}

}
