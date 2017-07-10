<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多CheckBox提交数据</title>
<script src="js/jquery-2.2.4.js"></script>
<script type="text/javascript">
	function signUp() {
		var box = $("input[name='checkItem']");
		var length = box.length;
		var content = "";
		for (var i = 0; i < length; i++) {
			if (box[i].checked == true) {
				content += box[i].value + ",";
			}
		}
		if (content == "" || content.length == 0) {
			alert("请勾选需要的资源项!");
			return;
		}
		content = content.substring(0, content.length - 1);
		$("#demo").attr("action", "test2.do?content=" + content);
		$("#demo").submit();
	}
</script>
</head>
<body>
	<form id="demo" action="" method="post">
		<div id="box"></div>
		<br />
		<button type="button" onclick="javascript:signUp();">提交</button>
	</form>
</body>
<script type="text/javascript">
	var phone = "111";
	$(function() {
		$
				.ajax({
					type : 'post',
					url : "test1.do",
					dataType : "json",
					data : {
						phone : phone
					},
					success : function(data) {
						var html = "";
						$
								.each(
										data,
										function(index, obj) {
											html += "<input type='checkbox' name='checkItem' value='"+obj.username+"'>";
											html += "<label name='text'>"
													+ obj.username
													+ "</label><br/>";
										});
						$("#box").append(html);
					}
				});
	})
</script>
</html>