package cn.usst.market.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.usst.market.po.Competition;
import cn.usst.market.po.DemandInfo;
import cn.usst.market.po.TeacherQueryVo;
import cn.usst.market.po.TeacherReference;

public interface CompetitionService {
	
	int insert(Competition record);
	
	List<Competition> findAllCompetition()throws Exception;
	
	List<Competition> findCompetitionByTeacherId(Integer id)throws Exception;
	
	Competition findCompetitionById(Integer id);
	
	Competition findCompetitionByLicense(Competition record);
	
	Competition checkCompetitionExist(String name);
	
	public List<DemandInfo> showDemandInfo();
	
	public List<Competition> findCompetitionList(TeacherQueryVo teacherQueryVo)throws Exception;
	
	public List<TeacherReference> findTeacherReference() throws Exception;
	
	
	public List<Competition> selectCompetitionByPage(TeacherQueryVo teacherQueryVo);
    
    public long getCompetitionCount(TeacherQueryVo teacherQueryVo);
    
    
    public void updateCompetitionInfo(Competition record);
    
    public Competition findCompetitionByCompanyId(Integer companyId);

	int getCurrentQuarterByCompanyId(int companyId);

    
    
}
