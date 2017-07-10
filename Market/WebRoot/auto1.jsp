<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div style="margin: 50px 50px">
		<label for="product_search">Product Search: </label> <input
			id="product_search" type="text" data-provide="typeahead"
			data-source='["Deluxe Bicycle", "Super Deluxe Trampoline", "Super Duper Scooter"]'>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-typeahead.js"></script>

</body>
</html>