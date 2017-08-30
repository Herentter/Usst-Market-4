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
				<span><%=new String(request.getParameter("titleOne").getBytes("ISO-8859-1"),"utf-8") %>--<%=new String(request.getParameter("titleTwo").getBytes("ISO-8859-1"),"utf-8") %></span>
			</div>

			<div class="panel-body">
				<div><%=new String(request.getParameter("content").getBytes("ISO-8859-1"),"utf-8") %></div>
			</div>

			<div class="panel-footer"></div>
		</div>
	</div>
</body>
</html>