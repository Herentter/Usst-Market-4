package cn.usst.market.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.usst.market.mapper.CompetitionResultMapper;
import cn.usst.market.po.BalanceSheet;
import cn.usst.market.po.CashFlow;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.IncomeStatement;
import cn.usst.market.service.CompetitionResultService;

@Service("competitionResultService")
public class CompetitionResultServiceImpl implements CompetitionResultService {
	@Autowired
	private CompetitionResultMapper competitionResultMapper;
	
	//通过公司ID和季度找资产负债表
	@Override
    public BalanceSheet findBalanceSheetByIdAndQuarter(IdQuarter idQuarter){
    	return competitionResultMapper.findBalanceSheetByIdAndQuarter(idQuarter);
    }
	
	//找现金流表
	@Override
    public CashFlow findCashFlowByIdAndQuarter(IdQuarter idQuarter){
    	return competitionResultMapper.findCashFlowByIdAndQuarter(idQuarter);
    }
	
	//损益表
	@Override
	public IncomeStatement findIncomeStatementByIdAndQuarter(IdQuarter idQuarter){
		return competitionResultMapper.findIncomeStatementByIdAndQuarter(idQuarter);
	}
}
