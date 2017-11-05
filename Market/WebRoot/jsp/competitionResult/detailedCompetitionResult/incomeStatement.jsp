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
<title>损益表</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">

</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
			<div class="panel-heading">
				<span>损益表</span>
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
						<tr>
							<td id="assetTd"><strong>毛利</strong></td>
						</tr>
						<tr>
							<td>+营业收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.yingyeIncome }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-邮寄返款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.fankuan }</td>
							</c:forEach>
						</tr>
						
						<tr>
							<td>-营业成本</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.yingyeCost }</td>
							</c:forEach>
						</tr>
						<tr bgcolor="#D9EDF7">
							<td><strong>=毛利</strong></td>
							<c:forEach items="${grossProfitList }" var="item">
								<td><strong>${item }</strong></td>
							</c:forEach>
						</tr>
						<tr>
							<td id="payId"><strong>支出</strong></td>
						</tr>
						<tr>
							<td>-研发投入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.yanfa }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-广告投入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.guanggao }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-销售人员费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.salerCost }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-实体及网络销售中心费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.salescenterCost }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-市场调研报告</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.baogao }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-货运</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.huoyun }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-库存持有成本</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.kucun }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-过剩产能成本</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.excessCapacity }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-折旧</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.zhejiu }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-网络营销费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.netmarketCost }</td>
							</c:forEach>
						</tr>
						<tr bgcolor="#D9EDF7">
							<td><strong>=总支出</strong></td>
							<c:forEach items="${sumPayList }" var="item">
								<td><strong>${item }</strong></td>
							</c:forEach>
						</tr>
						<tr bgcolor="#D9EDF7">
							<td><strong>营业利润</strong></td>
							<c:forEach items="${sumProfitList }" var="item">
								<td><strong>${item }</strong></td>
							</c:forEach>
						</tr>
						
						<tr>
							<td id="debtShareTd"><strong>其他收入及支出</strong></td>
						</tr>
						<tr>
							<td>+技术授权收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.techIncome }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-技术授权费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.techCost }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>+其他收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.qitaIncome }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-其他费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.qitaCost }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>+利息收入</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.lixiIncome }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-利息费用</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.lixiCost }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>-收入税</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.incomeStatement.taxCost }</td>
							</c:forEach>
						</tr>
						<tr bgcolor="#D9EDF7">
							<td><strong>=净收入</strong></td>
							<c:forEach items="${netIncomeList }" var="item">
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
		$("#assetTd").attr("colspan",col);
		$("#payId").attr("colspan",col);
		$("#debtShareTd").attr("colspan",col);
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