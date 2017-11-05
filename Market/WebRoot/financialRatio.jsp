<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/score.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet" href="css/pagination.css" type="text/css">
<style>
	body{
		padding:50px;
	}
	.container{
		
	}
	.pabel-body{
		padding:5px;
	}
</style>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>

</head>
<body>
	<div class="container">
		<div class="row" id="row2">
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<label>流动性比率</label>
					</div>
					<div class="pabel-body">
						<table class="table table-bordered" id="liquidity">
							<thead>
								<tr>
									<td>比率</td>
									<td>公司</td>
									<td>最高</td>
									<td>最低</td>
									<td>平均</td>
								</tr>
							</thead>
							<tr>
								<td>速动比率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.quickRatio }</td>
								<td>${financialRatioVo.financialRatioMin.quickRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.quickRatio }</td>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading">
					<label>活动比率</label>
					</div>
					<div class="pabel-body">
						<table class="table table-bordered" id="activity">
							<thead>
								<tr>
									<td>比率</td>
									<td>公司</td>
									<td>最高</td>
									<td>最低</td>
									<td>平均</td>
								</tr>
							</thead>
							<tr>
								<td>库存周转率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.invertoryoverRatio }</td>
								<td>${financialRatioVo.financialRatioMin.invertoryoverRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.invertoryoverRatio }</td>
							</tr>
							<tr>
								<td>固定资产周转率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.fixedassetoverRatio }</td>
								<td>${financialRatioVo.financialRatioMin.fixedassetoverRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.fixedassetoverRatio }</td>
							</tr>
							<tr>
								<td>总资产周转率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.totalassetRatio }</td>
								<td>${financialRatioVo.financialRatioMin.totalassetRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.totalassetRatio }</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
					<label>资产负债率比率</label>
					</div>
					<div class="pabel-body">
						<table class="table table-bordered" id="assetsliabilities">
							<thead>
								<tr>
									<td>比率</td>
									<td>公司</td>
									<td>最高</td>
									<td>最低</td>
									<td>平均</td>
								</tr>
							</thead>
							<tr>
								<td>负债比率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.debtRatio }</td>
								<td>${financialRatioVo.financialRatioMin.debtRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.debtRatio }</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
					<label>盈利能力比率</label>
					</div>
					<div class="pabel-body">
						<table class="table table-bordered" id="profit">
							<thead>
								<tr>
									<td>比率</td>
									<td>公司</td>
									<td>最高</td>
									<td>最低</td>
									<td>平均</td>
								</tr>
							</thead>
							<tr>
								<td>毛利率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.grossprofitRatio }</td>
								<td>${financialRatioVo.financialRatioMin.grossprofitRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.grossprofitRatio }</td>
							</tr>
							<tr>
								<td>净利率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.netprofitRatio }</td>
								<td>${financialRatioVo.financialRatioMin.netprofitRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.netprofitRatio }</td>
							</tr>
							<tr>
								<td>回报率</td>
								<td>${financialRatioVo.company.name }</td>
								<td>${financialRatioVo.financialRatioMax.returnRatio }</td>
								<td>${financialRatioVo.financialRatioMin.returnRatio }</td>
								<td>${financialRatioVo.financialRatioAvg.returnRatio }</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			
		</div>
	</div>

</body>
</html>