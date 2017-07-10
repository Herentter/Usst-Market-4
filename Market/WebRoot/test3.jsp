<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>主页简介</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/top.css">
<script src="js/jquery-2.2.4.js"></script>
</head>
<body>
	<div id="txt"></div>
</body>
<script type="text/javascript">
	var phone = "123456";
	$(function() {
		$.ajax({
			type : 'post',
			url : "test1.do",
			dataType : "json",
			data : {
				phone : phone
			},
			success : function(data) {
				var html = "";
				$.each(data, function(index, obj) {
					html += "<input type='text' value='"+obj.username+"'><br/>";
				});
				$("#txt").append(html);
			}
		});
	})
</script>
</html>