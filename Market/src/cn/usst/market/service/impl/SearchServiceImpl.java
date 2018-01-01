package cn.usst.market.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.CompanyMapper;
import cn.usst.market.mapper.SallSituationMapper;
import cn.usst.market.po.Company;
import cn.usst.market.po.CompanyMarket;
import cn.usst.market.po.GlobalPathNeedsVo;
import cn.usst.market.po.ProductMarketShare;
import cn.usst.market.po.PysicalEmploeePo;
import cn.usst.market.po.SaleIncomVo;
import cn.usst.market.po.SallSituationVo;
import cn.usst.market.po.StoreInforVo;
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
			int income = v.getPP().getPrice()*(v.getPMS().getHongkongSale()+v.getPMS().getMoscowSale()+v.getPMS().getNewdelhiSale()+v.getPMS().getSingaporeSale());
			int lost = v.getPP().getPrice()*v.getPMS().getStockoun();
			v.setSaleIncom(income);
			v.setSaleLost(lost);
			v.setMeedssum(v.getPMS().getMoscowNeed()+v.getPMS().getNewdelhiNeed()+v.getPMS().getSingaporeNeed()+v.getPMS().getHongkongNeed()+v.getPMS().getOnlineNeed());
			v.setSalesum(v.getPMS().getMoscowSale()+v.getPMS().getNewdelhiSale()+v.getPMS().getSingaporeSale()+v.getPMS().getHongkongSale()+v.getPMS().getOnlineSale());
			SSV2.add(v);
		}
		return SSV2;
	}
	
	public List<SallSituationVo> selectSaleSituationbyCompanyID(int companyid,int quarter){
		System.out.println("companyid ： "+companyid);
		System.out.println("quarter ： "+quarter);
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

	@Override
	public List<SaleIncomVo> selectPathAbilitybyCompanyID(PysicalEmploeePo po) {
		// TODO Auto-generated method stub
		List<SaleIncomVo> SSV = SSM.selectPathAbilitybyCompanyID(po);
		List<SaleIncomVo> SSV2 = new ArrayList<SaleIncomVo>();
		for(SaleIncomVo v:SSV){
			v.setMeedssum(v.getPMS().getMoscowNeed()+v.getPMS().getNewdelhiNeed()+v.getPMS().getSingaporeNeed()+v.getPMS().getHongkongNeed()+v.getPMS().getOnlineNeed());
			v.setSalesum(v.getPMS().getMoscowSale()+v.getPMS().getNewdelhiSale()+v.getPMS().getSingaporeSale()+v.getPMS().getHongkongSale()+v.getPMS().getOnlineSale());
			SSV2.add(v);
		}
		return SSV2;
	}

	@Override
	public List<SaleIncomVo> selectPathAbilitybyCompanyID(int companyid, int quarter) {
		// TODO Auto-generated method stub
		PysicalEmploeePo po = new PysicalEmploeePo();
		po.setQuater(quarter);
		po.setCompanyid(companyid);
		
		//查询
		List<SaleIncomVo> ListSIV = selectPathAbilitybyCompanyID(po);

		//整理数据
		List<SaleIncomVo> ListSIV2 = new ArrayList<SaleIncomVo>();
		for(SaleIncomVo vo:ListSIV){
			int saleIncomSum = vo.getPP().getPrice()*(vo.getPMS().getHongkongSale()+vo.getPMS().getMoscowSale()+vo.getPMS().getNewdelhiSale()+vo.getPMS().getSingaporeSale()+vo.getPMS().getOnlineSale());
			vo.setSaleIncomSum(saleIncomSum);
			int saleCostSum = vo.getCP().getCost()*(vo.getPMS().getHongkongSale()+vo.getPMS().getMoscowSale()+vo.getPMS().getNewdelhiSale()+vo.getPMS().getSingaporeSale()+vo.getPMS().getOnlineSale());
			vo.setSaleCostSum(saleCostSum);
			int youjiSum = vo.getPP().getYouji()*(vo.getPMS().getHongkongSale()+vo.getPMS().getMoscowSale()+vo.getPMS().getNewdelhiSale()+vo.getPMS().getSingaporeSale()+vo.getPMS().getOnlineSale());
			vo.setYoujiSum(youjiSum);
			ListSIV2.add(vo);
		}
		return ListSIV2;
	}

	
	@Override
	public List<GlobalPathNeedsVo> selectGlobalPathSharebycompanyid(int companyid, int quarter) {
		// TODO Auto-generated method stub
		PysicalEmploeePo po = new PysicalEmploeePo();
		po.setQuater(quarter);
		po.setCompanyid(companyid);
		
		List<GlobalPathNeedsVo> SSV = SSM.selectGlobalPathSharebycompanyid(po);
		List<GlobalPathNeedsVo> SSV2 = new ArrayList<GlobalPathNeedsVo>();
		for(GlobalPathNeedsVo v:SSV){
			v.setMeedssum(v.getPms().getMoscowNeed()+v.getPms().getNewdelhiNeed()+v.getPms().getSingaporeNeed()+v.getPms().getHongkongNeed()+v.getPms().getOnlineNeed());
			v.setSalesum(v.getPms().getMoscowSale()+v.getPms().getNewdelhiSale()+v.getPms().getSingaporeSale()+v.getPms().getHongkongSale()+v.getPms().getOnlineSale());
			SSV2.add(v);
		}
		return SSV2;
	}

	@Override
	public List<StoreInforVo> selectStoreInforbycompanyid(int companyid, int quarter) {
		// TODO Auto-generated method stub
		PysicalEmploeePo po = new PysicalEmploeePo();
		po.setQuater(quarter);
		po.setCompanyid(companyid);
		
		System.out.println("InforGet");
		System.out.println("quarter : "+quarter);
		System.out.println("companyid : "+companyid);
		List<StoreInforVo> SIVmid = SSM.selectStoreInforbycompanyid(po);

		System.out.println("DBVisited");
		List<StoreInforVo> SIV = new ArrayList<StoreInforVo>();
		System.out.println("-----For Started-----");
		for(StoreInforVo s:SIVmid){
			System.out.println("CompanyId : "+s.getCM().getCompanyId());
			System.out.println("Isphy : "+s.getCM().getIsPhy());
			String[] str = s.getCM().getMarketId().split(",");
			for(String ss:str)
				System.out.println("ss : "+ss);
			int[] i = new int[4];
			for(Integer count = 0;count<4;count++){
				for(int y = 0;y<str.length;y++){
					if(str[y].equals(count.toString()))
						i[count] = 1;
				}
			}
			String[] mStr = new String[4];
			for(int j = 0;j<4;j++){
				System.out.println("i["+j+"] = "+i[j]);
				if(i[j]==1)
					mStr[j]="●";
				/*else
					mStr[j]="否";*/
			}
			s.setStoreList(i);
			s.setmStr(mStr);
			if(s.getCM().getIsPhy() != 1){
				List<StoreInforVo> SIV2 = new ArrayList<StoreInforVo>();
				for(StoreInforVo p:SIV){
					if(p.getC().getName().equals(s.getC().getName())){
						System.out.println("p.getC().getName()"+p.getC().getName());
						System.out.println("p.getCM().getIsPhy()"+p.getCM().getIsPhy());
						p.setIsphy("●");
						s=p;
						continue;
					}
					SIV2.add(p);
				}
				SIV.removeAll(SIV);
				for(StoreInforVo p:SIV2){
					SIV.add(p);
				}
			}
			SIV.add(s);
		}
		System.out.println("-----For Ended-----");

		System.out.println("ServiceReturned");
		return SIV;
	}
	
	
}
