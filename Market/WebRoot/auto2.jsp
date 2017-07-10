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
			id="product_search" type="text" data-provide="typeahead">
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-typeahead.js"></script>

	<script>
		$(document).ready(function($) {
			// 当鼠标选中时光标闪烁
			$.fn.typeahead.Constructor.prototype.blur = function() {
				var that = this;
				setTimeout(function() {
					that.hide()
				}, 250);
			};

			$('#product_search').typeahead({
				source : function(query, process) {
					return [ "张三", "李四", "王五", "赵六", "胜七", "孙八", "钱九", "周十" ];
				}
			});
		})
	</script>

</body>
</html>