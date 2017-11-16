package cn.usst.market.mapper;

import java.util.List;

import cn.usst.market.po.GlobalPathNeedsVo;
import cn.usst.market.po.ProductMarketShare;
import cn.usst.market.po.PysicalEmploeePo;
import cn.usst.market.po.SaleIncomVo;
import cn.usst.market.po.SallSituationVo;
import cn.usst.market.po.StoreInforVo;

public interface SallSituationMapper {

	List<SallSituationVo> selectSaleSituationbyCompanyID(PysicalEmploeePo po);
	
	List<SaleIncomVo> selectPathAbilitybyCompanyID(PysicalEmploeePo po);

	List<GlobalPathNeedsVo> selectGlobalPathSharebycompanyid(PysicalEmploeePo po);
	
	List<StoreInforVo> selectStoreInforbycompanyid(PysicalEmploeePo po);

}
