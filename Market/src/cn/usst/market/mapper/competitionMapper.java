package cn.usst.market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.usst.market.po.Competition;

public interface competitionMapper {
	/**
	 * 提供接口访问XML文件,XML文件中写SQL语句访问数据库
	 */
	public void createCompetition(Competition competition);

	public Competition selectCompetitionById(int id);

	public void updateCompetition(@Param("com") Competition com, @Param("id") int id);

	public void deleteCompetitionById(int id);

	public int getCompetitionTotalCount();

	public List<Competition> queryCompetitionByPage(int index, int pageCount);
}
