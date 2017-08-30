package cn.usst.market.service;

import cn.usst.market.po.BalanceSheet;
import cn.usst.market.po.CashFlow;
import cn.usst.market.po.IdQuarter;
import cn.usst.market.po.IncomeStatement;

public interface CompetitionResultService {

	BalanceSheet findBalanceSheetByIdAndQuarter(IdQuarter idQuarter);

	CashFlow findCashFlowByIdAndQuarter(IdQuarter idQuarter);

	IncomeStatement findIncomeStatementByIdAndQuarter(IdQuarter idQuarter);

}
