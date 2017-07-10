package cn.usst.market.service;

import java.util.List;

import cn.usst.market.po.Competition;

public interface CompetitionService {
	/**
	 * 创建竞赛
	 * 
	 * @param competition
	 * @return
	 */
	public String createCompetition(Competition competition);

	public Competition selectCompetitionById(int id);

	public void updateCompetition(Competition com, int id);

	public void deleteCompetitionById(int id);

	public int getTotalCount();

	public List<Competition> queryCompetitionByPage(int index, int pageCount);
}
