package cn.usst.market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import cn.usst.market.po.Competition;
import cn.usst.market.po.TeacherQueryVo;
import cn.usst.market.po.UsageInfo;


public interface CompetitionMapper {

    int insert(Competition record);
    
    List<Competition> findAllCompetition()throws Exception;
    
    List<Competition> findCompetitionByTeacherId(Integer id)throws Exception;
    
    Competition findCompetitionById(Integer id);
    
    Competition findCompetitonByLicense(Competition record);
    
    public List<Competition> findCompetitionList(TeacherQueryVo teacherQueryVo)throws Exception;
    
    
    Competition checkCompetitionExist(String name);
    
    
    
    public List<Competition> selectCompetitionByPage(TeacherQueryVo teacherQueryVo);
    
    public long getCompetitionCount(TeacherQueryVo teacherQueryVo);

	void updateCompetitionInfo(Competition record);
	
	public Competition findCompetitionByCompanyId(Integer companyId);
	
	int getCurrentQuarterByCompanyId(Integer companyId);
    
    

    
    

}