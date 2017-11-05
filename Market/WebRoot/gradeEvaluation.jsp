<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath %>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/score.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<style>
	body{
		padding:10px;
	}
	.container{
		
	}
	.pabel-body{
		padding:5px;
	}
</style>
</head>
<body>
	<div class="container">
		
		<div class="row" id="row1">
			<div class="col-md-3">
				<div id="top_left">
					<a href="javascript:void(0)" id="quarterSubtract">
					<i class=" fa fa-caret-left"></i></a> &nbsp;&nbsp;<span>季度</span><span id="quarter">${competition.currentQuarter }</span>&nbsp;&nbsp;
					<a href="javascript:void(0)" id="quarterAdd"><i class="fa fa-caret-right"></i></a>
				</div>
			</div>
			<div class="col-md-7">
				2
			</div>
			<div class="col-md-2">
				3
			</div>
		</div>
	
	
		<div class="top">
		<input type="hidden" id="competitionId" value=<%=request.getParameter("id") %>>
		
		</div>
		<hr>
		<div class="middle1">
			<div class="panel panel-default">
		        <div class="panel-heading">
		        	<label>平衡记分卡</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						当前季度:&nbsp;<span id="currentQuarter"></span>
		        </div>
		        <div class="pabel-body">
		        	行业结果季度:&nbsp;<span id="quarter"></span>
		        	<table class="table table-bordered table-hover table-striped" id="tab">
						<thead>
							<tr>
								<td>项目</td>
								<td>最少</td>
								<td>最多</td>
								<td>平均</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td width="120px">营业总收入</td>
							</tr>
							<tr>
								<td width="120px">营业总成本</td>
							</tr>
							<tr>
								<td width="120px">营业利润</td>
							</tr>
							
							<tr>
								<td width="120px">现金等价物余额</td>
							</tr>
							<tr>
								<td width="120px">市场份额</td>
							</tr>
							<tr>
								<td width="120px">单位营销收益</td>
							</tr>
							<tr>
								<td width="120px">销售人员酬金</td>
							</tr>
							<tr>
								<td width="120px">人员培训时间</td>
							</tr>
							<tr>
								<td width="120px">资产管理</td>
							</tr>
							<tr>
								<td width="120px">生产效率</td>
							</tr>
						</tbody>
					</table>
		        </div>
		        <div class="panel-footer"></div>
			</div>
		</div>
	</div>
	
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/gradeEvaluation.js"></script>
</html>