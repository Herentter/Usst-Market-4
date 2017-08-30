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
<title>dicision locks</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">
<style type="text/css">
td:hover { 
	background-color:#eeeeee;
	
}
</style>

</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
			<div class="panel-heading">
				<span>关键决策</span>
				<input id="currentQuarter" type="hidden" value="${currentQuarter }"/>
			</div>

			<div class="panel-body">
				<div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>公司名称</th>
								<c:forEach items="${keyDecisionList }" var="item">
									<th>${item.company.name }</th>
								</c:forEach>
							</tr>
						</thead>
						<tbody>
							<tr id="companyId" style="display:none;">
								<td></td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td>${item.company.id }</td>
								</c:forEach>
							</tr>
							<tr>
								<td><strong>市场营销</strong></td>
							</tr>
							<tr id="strategy">
								<td>目标细分市场</td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td onclick="strategy(this)" style="cursor:pointer;">
										${item.companyStrategy.mainPro }<br/>
										${item.companyStrategy.minorPro }
									</td>
								</c:forEach>
							</tr>
							<tr id="newBrand">
								<td>新品牌</td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td>
										<c:forEach items="${item.companyProductList }" var="item2">
											${item2.name }<br/>
										</c:forEach>
									</td>
								</c:forEach>
							</tr>
							<tr>
								<td><strong>销售渠道</strong></td>
							</tr>
							<tr id="entitySalesCenter">
								<td>实体销售中心</td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td>
										<c:forEach items="${item.phyMarketList }" var="item2">
											${item2.city }<br/>
										</c:forEach>
									</td>
								</c:forEach>
							</tr>
							<tr id="netSalesCenter">
								<td>网络销售中心</td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td>
										<c:forEach items="${item.netMarketList }" var="item2">
											${item2.city }<br/>
										</c:forEach>
									</td>
								</c:forEach>
							</tr>
							<tr>
								<td><strong>人力资源</strong></td>
								
							</tr>
							<tr id="teamPeopleNumber">
								<td>管理团队人数</td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td>${item.memberCount }</td>
								</c:forEach>
							</tr>
							<tr>
								<td><strong>生产制造</strong></td>
							</tr>
							<tr id="fixedCapacity">
								<td>当前季度固定产能</td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td>${item.fixedCapacity }</td>
								</c:forEach>
							</tr>
							<tr id="addCapacity">
								<td>下季度将增加的产能</td>
								<c:forEach items="${keyDecisionList }" var="item">
									<td>${item.addCapacity }</td>
								</c:forEach>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>

			<div class="panel-footer"></div>
		</div>
	</div>
	
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">
	function strategy(node){
		//var id=$(this).parents("tr").find("td").index($(this));
		var id=$(node).parents("tr").find("td").index($(node));
		var companyId=$("#companyId").children('td').eq(id).text();
		var currentQuarter=$("#currentQuarter").val();
		var url="policyDecision/strategyInfo.do?currentQuarter="+currentQuarter+"&companyId="+companyId;
		window.location.href=url;
	}
</script>
</body>
</html>