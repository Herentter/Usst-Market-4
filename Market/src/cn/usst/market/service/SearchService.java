package cn.usst.market.service;

import java.util.List;

import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.GlobalPathNeedsVo;
import cn.usst.market.po.ProductMarketShare;
import cn.usst.market.po.PysicalEmploeePo;
import cn.usst.market.po.SaleIncomVo;
import cn.usst.market.po.SallSituationVo;
import cn.usst.market.po.StoreInforVo;

public interface SearchService {

	List<SallSituationVo> selectSaleSituationbyCompanyID(PysicalEmploeePo po);

	public List<SallSituationVo> selectSaleSituationbyCompanyID(int companyid,int quarter);
	
	public List<CompanyMarket> selectStoreStratge(int companyid,int quarter) throws Exception;

	List<SaleIncomVo> selectPathAbilitybyCompanyID(PysicalEmploeePo po);

	public List<SaleIncomVo> selectPathAbilitybyCompanyID(int companyid,int quarter);

	public List<GlobalPathNeedsVo> selectGlobalPathSharebycompanyid(int companyid, int quarter);

	public List<StoreInforVo> selectStoreInforbycompanyid(int companyid, int quarter);

	
}
