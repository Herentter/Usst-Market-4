<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>头部导航</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/top.css">
<script src="js/jquery-2.2.4.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		var loginAdmin ="+<%=request.getSession().getAttribute("loginAdmin")%>+";
		if (loginAdmin==null) {
			alert("抱歉,您还没有登录,请先登录！！！");
			window.location.href = "login.jsp";
		}
	});
</script>
</head>
<body>
	<div id="head">
		<div id="head-left">
			<img src="images/logo.png"> <span id="head-title">USST
				Market</span>
		</div>
		<div id="head-right">
			<a href=""><span><i class="fa fa-user-circle"></i></span> <span
				id="head-right-text"></span></a>
			<div id="user-detail">
				<h3>账户详情</h3>
				<p>用户名：${sessionScope.loginAdmin.username }</p>
				<p>邮箱：${sessionScope.loginAdmin.email }</p>
				<p>联系方式：${sessionScope.loginAdmin.phone }</p>
			</div>
		</div>
	</div>

</body>
</html>