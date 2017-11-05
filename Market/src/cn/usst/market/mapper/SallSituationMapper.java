package cn.usst.market.mapper;

import java.util.List;

import cn.usst.market.po.PysicalEmploeePo;
import cn.usst.market.po.SallSituationVo;

public interface SallSituationMapper {
	
	List<SallSituationVo> selectSaleSituationbyCompanyID(PysicalEmploeePo po);

}
