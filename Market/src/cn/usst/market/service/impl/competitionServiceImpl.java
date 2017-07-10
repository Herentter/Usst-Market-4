package cn.usst.market.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.competitionMapper;
import cn.usst.market.po.Competition;
import cn.usst.market.service.CompetitionService;

@Service("competitionService")
public class competitionServiceImpl implements CompetitionService {

	@Autowired
	private competitionMapper competitionMapper;

	@Override
	public String createCompetition(Competition competition) {
		// TODO Auto-generated method stub
		competitionMapper.createCompetition(competition);
		Competition com = competitionMapper.selectCompetitionById(competition.getId());
		if (com != null) {
			return "success,恭喜你，竞赛初始信息创建成功！！！";
		}
		return "failed,很抱歉，竞赛创建失败！！！";
	}

	@Override
	public Competition selectCompetitionById(int id) {
		// TODO Auto-generated method stub
		return competitionMapper.selectCompetitionById(id);
	}

	@Override
	public void updateCompetition(Competition com, int id) {
		// TODO Auto-generated method stub
		competitionMapper.updateCompetition(com, id);
	}

	@Override
	public void deleteCompetitionById(int id) {
		// TODO Auto-generated method stub
		competitionMapper.deleteCompetitionById(id);
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return competitionMapper.getCompetitionTotalCount();
	}

	@Override
	public List<Competition> queryCompetitionByPage(int index, int pageCount) {
		// TODO Auto-generated method stub
		return competitionMapper.queryCompetitionByPage(index, pageCount);
	}

}
