<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath %>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>现金流表</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">

</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
			<div class="panel-heading">
				<span>现金流表</span>
			</div>

			<div class="panel-body">
				
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>公司名称</th>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<th>${item.company.name }</th>
							</c:forEach>
						</tr>
					</thead>
					<tbody>
						<tr bgcolor="#D9EDF7">
							<td><strong>季初现金余额</strong></td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td><strong>${item.cashFlow.yuE }</strong></td>
							</c:forEach>
						</tr>
						<tr>
							<td id="operatingActiveTd"><strong>经营活动收支</strong></td>
						</tr>
						<tr>
							<td>+销售收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.xiaoshouGet }</td>
							</c:forEach>
						</tr>
						
						<tr>
							<td>+利息收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.lixiGet }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>+技术授权收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.jishuGet }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>+其他收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.qitaGet }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-邮寄返款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.fankuanPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-生产</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.shengchanPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-研发</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.yanfaPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-广告</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.guanggaoPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-销售人员费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.salerPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-实体及网络销售中心费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.salescenterPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-市场调研</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.diaoyanPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-货运</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.huoyunPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-库存持有成本</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.kucunPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-网络销售费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.netmarketPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-收入税</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.taxPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-利息费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.lixiPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-技术授权费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.jishuPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-其他费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.qitaPay }</td>
							</c:forEach>
						</tr>
						
						<tr bgcolor="#D9EDF7">
							<td><strong>=净营业现金</strong></td>
							<c:forEach items="${operatingCashSumList }" var="item">
								<td><strong>${item }</strong></td>
							</c:forEach>
						</tr>
						
						<tr>
							<td id="investActivityTd"><strong>投资活动</strong></td>
						</tr>
						<tr>
							<td>工厂固定产能</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.gongchangPay }</td>
							</c:forEach>
						</tr>
						<tr bgcolor="#D9EDF7">
							<td><strong>=所有投资活动</strong></td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td><strong>${item.cashFlow.gongchangPay }</strong></td>
							</c:forEach>
						</tr>
						<tr>
							<td id="financeActivityTd"><strong>财务活动</strong></td>
						</tr>
						<tr>
							<td>+借入常规贷款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.daikuanNormalGet }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>+借入紧急贷款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.daikuanEmergyGet }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>+提取上季度存款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.cunkuanRegularGet }</td>
							</c:forEach>
						</tr>
						
						<tr>
							<td>-偿还常规银行贷款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.daikuanNormalPay }</td>
							</c:forEach>
						</tr>
						
						<tr>
							<td>-偿还紧急贷款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.daikuanEmergyPay }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-本季度存款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.cashFlow.cunkuanRegularPay }</td>
							</c:forEach>
						</tr>
						
						<tr bgcolor="#D9EDF7">
							<td><strong>=所有财务活动</strong></td>
							<c:forEach items="${financeActiveSumList }" var="item">
								<td><strong>${item }</strong></td>
							</c:forEach>
						</tr>
						<tr bgcolor="#D9EDF7">
							<td><strong>季末现金余额</strong></td>
							<c:forEach items="${yuEList }" var="item">
								<td><strong>${item }</strong></td>
							</c:forEach>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="panel-footer"></div>
		</div>
	</div>

<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">
	$(function(){
		var col=$("table").find("tr").children("th").length;
		$("#operatingActiveTd").attr("colspan",col);
		$("#investActivityTd").attr("colspan",col);
		$("#financeActivityTd").attr("colspan",col);
		
		/* for(var i=2;i<=col;i++){
			var sum=0;
			var node=$("#asset tr td:nth-child(i)");
			if($("#asset tr td:nth-child(i)").length>0){
				$("#asset tr td:nth-child(i)").each(function(){
					alert($(this).text());
					sum+=parseInt($(this).html());
					$("#assetSum").append("<td><strong>").append(sum).append("</strong></td>");
				});
			}else{
				sum+=0;
			}
			
		} */
	});
</script>
</body>
</html>