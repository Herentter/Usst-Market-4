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
<title>资产负债表</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">

</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
			<div class="panel-heading">
				<span>资产负债表</span>
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
							<td id="assetTd"><strong>流动资产+长期资产</strong></td>
						</tr>
						<tr>
							<td>现金</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.huobi }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>季度定期存款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.cunkuan }</td>
							</c:forEach>
						</tr>
						
						<tr>
							<td>利息</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.lixiCollection }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>存货</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.cunhuo }</td>
							</c:forEach>
						</tr>
						<!-- <tr>
							<td>长期资产</td>
						</tr> -->
						<tr>
							<td>净固定资产</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.zichan }</td>
							</c:forEach>
						</tr>
						
						<tr id="assetSum" bgcolor="#D9EDF7">
							<td><strong>合计</strong></td>
							<c:forEach items="${assetSumList }" var="item">
								<td><strong>${item }</strong></td>
							</c:forEach>
						</tr>
						
						<tr>
							<td id="debtShareTd"><strong>负债+股本金</strong></td>
						</tr>
						<tr>
							<td>常规银行贷款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.daikuanNormal }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>紧急贷款</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.daikuanEmergency }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>普通股</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.guben }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>留存收益</td>
							<c:forEach items="${companyFinanceVoList }" var="item">
								<td>${item.balanceSheet.liucun }</td>
							</c:forEach>
						</tr>
						<tr bgcolor="#D9EDF7">
							<td><strong>合计</strong></td>
							<c:forEach items="${debtShareSumList }" var="item">
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