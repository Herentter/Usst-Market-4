package cn.usst.market.service;

import java.util.List;

import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.PysicalEmploeePo;
import cn.usst.market.po.SallSituationVo;

public interface SearchService {

	List<SallSituationVo> selectSaleSituationbyCompanyID(PysicalEmploeePo po);

	public List<SallSituationVo> selectSaleSituationbyCompanyID(int companyid,int quarter);
	
	public List<CompanyMarket> selectStoreStratge(int companyid,int quarter) throws Exception;
}
