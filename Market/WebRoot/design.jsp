<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/design.css">
<script src="js/jquery-2.2.4.js"></script>
<style type="text/css">
body {
	width: 99%;
	margin: 4px;
}

.table>thead>tr>td, .table>tbody>tr>td {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
	
}
.design-btn{
		width:100px;	
	}
.panel-body{
	min-height:500px;
}
</style>
<script type="text/javascript">
	  var search = function(btn) {
		$($(btn))
				.each(
						function() {
							var tr = $(this).parents("td").parents("tr");
							var method = $(btn).attr("value");
							var id=$(tr).attr("id");
							alert(id);
							$("#operate").attr(
									"action",
									"operateProduct.do?method=" + method
											+ "&id=" + id );
							$("#operate").submit();
						});

	}  
	 
	/*  var search = function(btn) {
			$($(btn))
					.each(
							function() {
								var tr = $(this).parents("td").parents("tr");
								var method = $(btn).attr("value");
								var id=$(tr).attr("id");
								alert(id);
								document.getElementById("myHidden1").value=id;
								$("#operate").submit();
							});

		}  */

	var del = function(btn) {
		$($(btn)).each(
				function() {
					var tr = $(this).parents("td").parents("tr");
					var method = $(btn).attr("value");
					var name = $(tr).children("td").eq(0).text();
					alert("是否要删除此项？");
					$(btn).parents("td").parents("tr").remove();
					$("#operate").attr(
							"action",
							"operateProduct.do?method=" + method + "&name="
									+ name);
					$("#operate").submit();
				});

	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="panel panel-info">
		<div class="panel-heading">设计品牌</div>
		<div class="panel-body">
			<div id="toubu">
				<label class="chanpin">产品信息</label> 
				<input type="button"
					name="design" class="design-btn btn" value="设计新产品"
					onclick="window.open('showProductDetail2.do', '_self'); " />
			</div>
			<table class="table table-bordered table-hover">
				<caption>产品详细信息</caption>
				<thead>
					<tr class="success">
						<td>产品名称</td>
						<td>产品类型</td>
						<td>成本</td>
						<td></td>
			
					</tr>
				</thead>
				<tbody>
					<form id="operate" action="" method="post">
					
						<c:choose>
							<c:when test="${not empty companyProducts}">
								<c:forEach var="product" items="${companyProducts}">
									<tr id="${product.id }">
										<td>${product.name }</td>
										<td>${product.type }</td>
										<td>${product.cost }</td>
										<td>
											<button type="button" onclick="javascript:search(this);"
												class="btn btn-success btn-sm-2" id="query" name="method"
												value="query">
												<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>查看
											</button>
										
										<button type="button" onclick="javascript:del(this);"
												class="btn btn-danger btn-sm-2" id="delete" name="method"
												value="delete">
												<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
											</button></td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5">抱歉,未找到产品信息！</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</form>
				</tbody>
			</table>
		</div>
		<div class="panel-footer">
	
		</div>
	</div>
	
	<div id="main" style="width: 600px;height:300px;"></div>
</body>
</html>