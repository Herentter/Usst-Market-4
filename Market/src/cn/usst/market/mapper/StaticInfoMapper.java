package cn.usst.market.mapper;

import java.util.List;

import cn.usst.market.po.MarketInfo;
import cn.usst.market.po.PriceInfo;
import cn.usst.market.po.UsageInfo;

public interface StaticInfoMapper {
	
	public List<UsageInfo> showUsageInfo();
	
	public List<PriceInfo> showPriceInfo();

	public List<MarketInfo> showMarketInfo();

    
}
