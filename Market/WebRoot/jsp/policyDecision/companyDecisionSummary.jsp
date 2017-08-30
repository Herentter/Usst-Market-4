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

<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
			<div class="panel-heading">
				<span>决策汇总</span>
			</div>

			<div class="panel-body">
				<label>公司名称:${company.name }</label>
				<hr/>
				<label>团队管理职责</label><br/>
				<table class="table table-bordered">
					<thead>
						<tr>
							<td>管理者姓名</td>
							<td>主要职责</td>
							<td>次要职责</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${memberDutyList }" var="item">
							<tr>
								<td>${item.name }</td>
								<td>${item.mainDuty }</td>
								<td>${item.minorDuty }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr/>
				
				<label>目标与策略</label><br/>
				<label>目标细分市场：1-${companyStrategy.mainPro },2-${companyStrategy.minorPro }</label><br/>
				<label>宗旨：${companyStrategy.service }</label><br/>
				<label>策略方向：</label>
				<ul>
					<c:forEach items="${strategyList }" var="item2">
						<li>${item2.detail }</li>
					</c:forEach>
				</ul>
				<hr/>
				
				<label>团队规则</label>
				<ul>
					<c:forEach items="${ruleInfoList }" var="item3">
						<li>${item3.detail }</li>
					</c:forEach>
				</ul>
				<hr/>
				
				<label>个人目标</label><br/>
				<c:forEach items="${allPersonalGoalList }" var="item4">
					<label>${item4.member.name }</label>
					<ul>
						<c:forEach items="${item4.personalGoal }" var="item5">
							<li>${item5.detail }</li>
						</c:forEach>
					</ul>
				</c:forEach>
				<hr/>
				
				<label>品牌设计</label>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>品牌名称</th>
							<c:forEach items="${companyProductList }" var="product">
							<th>${product.name }</th>
							</c:forEach>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${bibeiList[0].title }</td>
							<c:forEach items="${bibeiList }" var="bibei">
							<td>${bibei.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${yunyingList[0].title }</td>
							<c:forEach items="${yunyingList }" var="yunying">
							<td>${yunying.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${lanyaList[0].title }</td>
							<c:forEach items="${lanyaList }" var="lanya">
							<td>${lanya.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${pingmuList[0].title }</td>
							<c:forEach items="${pingmuList }" var="pingmu">
							<td>${pingmu.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${chukongList[0].title }</td>
							<c:forEach items="${chukongList }" var="chukong">
							<td>${chukong.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${cpuList[0].title }</td>
							<c:forEach items="${cpuList }" var="cpu">
							<td>${cpu.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${jishenList[0].title }</td>
							<c:forEach items="${jishenList }" var="jishen">
							<td>${jishen.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${paizhaoList[0].title }</td>
							<c:forEach items="${paizhaoList }" var="paizhao">
							<td>${paizhao.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${texingList[0].title }</td>
							<c:forEach items="${texingList }" var="texing">
							<td>${texing.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${dianchiList[0].title }</td>
							<c:forEach items="${dianchiList }" var="dianchi">
							<td>${dianchi.detail }</td>
							</c:forEach>
						</tr>
						<tr>
							<td>${qitaList[0].title }</td>
							<c:forEach items="${qitaList }" var="qita">
							<td>${qita.detail }</td>
							</c:forEach>
						</tr>
					</tbody>
				</table>
				<hr/>
				<label>销售渠道</label><br/>
				<label>开设实体销售中心</label><br/>
				<c:forEach items="${phyMarketList }" var="item">
					${item.city }<br/>
				</c:forEach>
				实体销售中心总成本：${phyTotalPrice }<br/>
				<label>开设网络销售中心</label><br/>
				<c:forEach items="${netMarketList }" var="item">
					&nbsp;${item.city }<br/>
				</c:forEach>
				网络销售中心总成本:${netTotalPrice }
				
				<hr/>
				<label>生产制造</label><br/>
				<label>固定产能</label><br/>
				当前季度固定产能：${currentCapacity }<br/>
				计划增加产能：${addCapacity }<br/>
				下季度固定产能：${nextTotalCapacity }<br/>
				
				<div>
				</div>
			</div>

			<div class="panel-footer"></div>
		</div>
	</div>
</body>
</html>