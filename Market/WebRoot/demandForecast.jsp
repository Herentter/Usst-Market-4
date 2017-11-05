<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css">
body {
	width: 99%;
	margin: 4px;
	height: 1000px;
}

.panel {
	margin: 0px;
}

.panel-body {
	background-size: cover;
}

.table {
	width: 700px;
	height: 80px;
	background: white;
}

td, th {
	text-align: center;
}

#two {
	width: 350px;
	height: 200px;
}

#three {
	width: 500px;
	height: 20px;
}

#notice2 {
	min-height: 420px;
}

.course_content {
	border: 1px solid #0ff;
	margin-top: 10px;
	padding: 20px;
	min-height: 220px;
	font-size: 14px;
	letter-spacing: 1px;
}

.left {
	/* border:1px solid blue; */
	width: 450px;
	padding: 20px;
	float: left;
	background: #eee;
	margin: 10px 0 0 2px;
	min-height: 220px;
}

.left_title span i {
	color: #009;
	font-size: 18px;
	margin-right: 6px;
}

.right {
	/* border:1px solid blue; */
	width: 400px;
	padding: 20px;
	float: left;
	background: #abcdef;
	margin: 10px 0 0 60px;
	min-height: 120px;
}

#button {
	float: right;
	margin:;
}

.right_title span i {
	color: red;
	font-size: 22px;
	margin-right: 6px;
}

.text0 {
	margin-left: 30px;
	margin-top: 10px;
}

.text1 {
	text-indent: 30px;
	margin-top: 10px;
}

.text1_ul {
	margin-left: 40px;
	margin-top: 10px;
}

.text2 {
	margin-left: 30px;
	margin-top: 25px;
}

.left_content li {
	margin-top: 5px;
}

.tab-content {
	margin-top: 10px;
}
</style>
<script type="text/javascript">
	function sign() {
		alert("提交成功");
		document.getElementById("form").action = "showDemandForecast1.do";
		document.getElementById("form").submit();
	}
</script>
</head>
<body>
	<div class="panel panel-info">
		<div class="panel-heading">需求量预测</div>
		<div class="panel-body">
			<ul class="nav nav-tabs">
				<li><a href="#notice1" data-toggle="tab">
						课程介绍</a></li>
				<li class="active"><a href="#notice2" data-toggle="tab">决策界面</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane fade " id="notice1">
					<div class="course_content">
						<div class="text1">预测需求量的关键就在于估计每个销售人员所能创造的销量。
							将这一人均销量乘以销售人员总数，就可以得到预测需求量。</div>
						<div class="text1">实践准则: 预计需求量 = 人均销量 X 当前雇佣的销售人员总数</div>
					</div>
					<div class="left">
						<div class="left_title">
							<span><i class="fa fa-tasks"></i></span><label>你的任务</label>
						</div>
						<div class="left_content">估计销售人员在当前季度可能创造的销售量。
							在市场测试初期（第二季度及第三季度），市场对您的公司和品牌一无所知。 而且，您的某些策略很可能没正中目标而需要修改。
							因此，在预测需求量的时候应该适度保守。 作为参考，每个销售人员每季度大概可以销售 30 ~ 100 件电脑。
							如果您在某区域同时拥有实体和网络销售中心，则两者之间也会相互争夺潜在消费者。 在这种情况下，销售人员的人均需求量可能会降低 30%
							到 60%。 将本季度预计人均销量定为 50 件是比较合适的。</div>
					</div>
				</div>
				<div class="tab-pane fade in active" id="notice2">
					<form class="form-horizontal" id="form" method="post" action="">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th rowspan="2"></th>
									<th colspan="3">上季度</th>
									<th colspan="3">当前季度</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<td>销售人员数量</td>
									<td>销售人员人均需求量</td>
									<td>总需求量</td>
									<td>销售人员数量</td>
									<td>销售人员人均需求量</td>
									<td>总需求量</td>

								</tr>
								<tr>
									<td>实体销售中心</td>
									<td>0</td>
									<td>0.00</td>
									<td>0</td>
									<td>${demandForecastList[0].salesNumPhy}</td>
									<td><input
										onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
										onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
										class="form-control" type="text" name="demand_average_phy"
										value="${demandForecastList[0].demandAveragePhy}"></td>
									<td>${demandForecastList[0].demandAveragePhy*demandForecastList[0].salesNumPhy}</td>
								</tr>
								<tr>
									<td>网络销售中心</td>
									<td>0</td>
									<td>0.00</td>
									<td>0</td>
									<td>${demandForecastList[0].salesNumWeb}</td>
									<td><input
										onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
										onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
										class="form-control" class="form-control" type="text"
										name="demand_average_web"
										value="${demandForecastList[0].demandAverageWeb}"></td>
									<td>${demandForecastList[0].demandAverageWeb*demandForecastList[0].salesNumWeb}</td>
								</tr>
								<tr>
									<td>合计</td>
									<td>0</td>
									<td>0.00</td>
									<td>0</td>
									<td>${demandForecastList[0].salesNumPhy+demandForecastList[0].salesNumWeb}</td>
									<td>----</td>
									<td>${demandForecastList[0].demandAveragePhy*demandForecastList[0].salesNumPhy
									+demandForecastList[0].demandAverageWeb*demandForecastList[0].salesNumWeb}</td>
								</tr>

							</tbody>
						</table>
						<table class="table table-bordered" id="two">
							<thead>
								<tr>
									<td rowspan="2">品牌</td>
									<td>上季度</td>
									<td>当前季度</td>
								</tr>
								<tr>
									<td>需求量</td>
									<td>需求量</td>
								</tr>
							</thead>
							<tbody>
								<c:set var="sum" value="0"></c:set>
								<c:forEach items="${companyProducts}" varStatus="state"
									var="items">

									<tr>
										<td>${items.name}</td>
										<td>不可用</td>
										<td><input
											onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
											onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
											class="form-control" class="form-control" type="text"
											name="demand_num_two" value="${items.demandNumTwo}"> <input
											type="hidden" name="ids" value="${items.id}"></td>
									</tr>
									<c:set var="sum" value="${sum+items.demandNumTwo}"></c:set>
								</c:forEach>
								<tr>
									<td>合计</td>
									<td>0</td>
									<td>${sum}</td>
								</tr>
							</tbody>
						</table>

						<table class="table table-bordered" id="three">
							<tr>
								<td></td>
								<td>件/季度</td>
								<td>件/天</td>
							</tr>
							<tr>
								<td>满足预测需求量所需的工厂有效产能</td>
								<td>${sum}</td>
								<td><fmt:formatNumber type="number" value="${sum/65}"
										pattern="0" maxFractionDigits="0" /></td>
							</tr>
						</table>
						<button class="btn btn-info" id="button" onclick="sign()">提交</button>
					</form>
				</div>
			</div>
		</div>
		<div class="panel-footer"></div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
<script type="text/javascript" src="js/classIntroduction.js"></script>

</html>