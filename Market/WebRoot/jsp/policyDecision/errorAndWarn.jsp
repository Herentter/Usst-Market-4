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
<title>错误及警告</title>
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
				<span>错误及警告</span>
			</div>

			<div class="panel-body">
				<div>
					<h3>错误及警告</h3>
					<table>
						<tr>
							<th>公司</th>
							<th>重大错误</th>
							<th>重要警告</th>
							<th>注意事项</th>
						</tr>
						<c:forEach items="${companyList }" var="item">
							<tr>
								<td>${item.name }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>

			<div class="panel-footer"></div>
		</div>
	</div>
</body>
</html>