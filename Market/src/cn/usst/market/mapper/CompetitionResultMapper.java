package cn.usst.market.mapper;

import cn.usst.market.po.BalanceSheet;
import cn.usst.market.po.CashFlow;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.IncomeStatement;

public interface CompetitionResultMapper {

    int insert(BalanceSheet record);

    int insertSelective(BalanceSheet record);
    
    //通过公司ID和季度找资产负债表
    public BalanceSheet findBalanceSheetByIdAndQuarter(IdQuarter idQuarter);
    
    //找现金流表
    public CashFlow findCashFlowByIdAndQuarter(IdQuarter idQuarter);
    
    //损益表
    public IncomeStatement findIncomeStatementByIdAndQuarter(IdQuarter idQuarter);
}