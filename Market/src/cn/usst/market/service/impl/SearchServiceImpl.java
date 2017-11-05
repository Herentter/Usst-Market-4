package cn.usst.market.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.CompanyMapper;
import cn.usst.market.mapper.SallSituationMapper;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.PysicalEmploeePo;
import cn.usst.market.po.SallSituationVo;
import cn.usst.market.service.SearchService;

@Service("SearchServiceImpl")
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	public SallSituationMapper SSM;
	
	@Autowired
	public CompanyMapper CM;

	@Override
	public List<SallSituationVo> selectSaleSituationbyCompanyID(PysicalEmploeePo po) {
		// TODO Auto-generated method stub
		List<SallSituationVo> SSV = SSM.selectSaleSituationbyCompanyID(po);
		List<SallSituationVo> SSV2 = new ArrayList<SallSituationVo>();
		for(SallSituationVo v:SSV){
			int income = v.getPP().getPrice()*v.getPMS().getSale();
			int lost = v.getPP().getPrice()*v.getPMS().getStockoun();
			v.setSaleIncom(income);
			v.setSaleLost(lost);
			SSV2.add(v);
		}
		return SSV2;
	}
	
	public List<SallSituationVo> selectSaleSituationbyCompanyID(int companyid,int quarter){
		PysicalEmploeePo po = new PysicalEmploeePo();
		po.setQuater(quarter);
		po.setCompanyid(companyid);
		return selectSaleSituationbyCompanyID(po);
	}

	@Override
	public List<CompanyMarket> selectStoreStratge(int companyid, int quarter) throws Exception {
		// TODO Auto-generated method stub
		
		Company infor = new Company();
		infor.setId(companyid);
		
		Company me = CM.findCompanyById(infor);
		List<Company> ListC = CM.findCompanyListByCompetitionId(me.getCompetitionId());
		List<CompanyMarket> ListCM = new ArrayList<CompanyMarket>();
		
		for(Company c:ListC){
			CompanyMarket CM2 = new CompanyMarket();
			CM2.setIsPhy(1);
			CM2.setCompanyId(c.getId());
			CM2.setQuarter(quarter);
			List<CompanyMarket> ListCM2 = CM.showCompanymarket(CM2);
			ListCM.add(ListCM2.get(0));
		}
		
		return ListCM;
	}

}
