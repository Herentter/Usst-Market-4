<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<style type="text/css">
#test {
	height: 30px;
	width: 100px;
	color: blue;
	border: none;
	zoom: 1;
	outline: medium;
}

#test1 {
	height: 30px;
	width: 100px;
	color: blue;
	border: none;
	zoom: 1;
	outline: medium;
}
}
</style>
<script type="text/javascript">
	function change() {
		if ($("#test").attr("readonly") == "readonly") {
			alert("我可以被修改了");
		}
		$("#test").attr("readonly", false);
		$("#test").attr("value", "c++");
		alert("我的修改完成了");
	}
</script>
</head>
<body>
	<input type="text" id="test" readonly="true" value="Java">
	<br />
	<input type="text" id="test1" disabled="true" value="Java">
	<button type="button" onclick="javascript:change();">修改</button>
</body>
</html>