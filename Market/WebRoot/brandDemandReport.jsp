<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript">
$(function(){
	trArr = $("#tab tr");
	for(var i = 1; i < trArr.length; i++){
		var tdArr = trArr.eq(i).children("td");
		if(tdArr.eq(2).html()=="practical"){
			tdArr.eq(2).html("实用型");
		}else if(tdArr.eq(3).html()=="perfect"){
			tdArr.eq(2).html("极致型");
		}else{
			tdArr.eq(2).html("商务型");
		}
	}
});
</script>
</head>
<body>
	<div class="container">
		<div class="row" id="row2">
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-heading">
						<label>全球市场</label>
					</div>
					<div class="pabel-body">
						<table class="table table-bordered" id="tab">
							<thead>
								<tr>
									<td>品牌</td>
									<td>公司</td>
									<td>类型</td>
									<td>销量</td>
								</tr>
							</thead>
							<c:forEach var="item" items="${productMarketShare }">
								<tr>
									<td>${item.companyProduct.name }</td>
									<td>${item.company.name }</td>
									<td>${item.productMarketShare.productType }</td>
									<td>${item.productMarketShare.sale }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			
		</div>
	</div>

</body>
</html>