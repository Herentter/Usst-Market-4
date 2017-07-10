<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员</title>
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/top.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<style type="text/css">
#menu {
	width: 100%;
	text-align: right;
	background: #f6f6f6;
	margin-right: -15px;
	padding-top: 2px;
}

#menu a {
	margin-right: 45px;
	margin-bottom: 5px;
	margin-top: 5px;
	color: #666;
	cursor: pointer;
	font-size: 20px;
}

#menu a:last-of-type {
	margin-right: 15px;
}

#menu a:hover {
	text-decoration: none;
}

#left {
	width: 200px;
	height: 560px;
	float: left;
	background: #1e485d;
	padding-top: 10px;
	padding-bottom: 20px;
}

#right {
	float: left;
}

#footer {
	margin-top: 0px;
	float: left;
}

.subnav:actived {
	background: red;
}
</style>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div id="left">
		<div id="leftcontent">
			<iframe src="admin-left.jsp" frameborder=0 height=700 scrolling="no"
				width=200 marginheight=0 marginwidth=0 seamless="seamless"></iframe>
		</div>
	</div>
	<div id="right">
		<div id="menu">
			<a data-toggle="tooltip" data-placement="left"
				data-original-title="设置" title=""> <span><i
					class="fa fa-cog fa-x"></i></span>
			</a> <a data-toggle="tooltip" data-placement="left"
				data-original-title="帮助" title=""> <span><i
					class="fa fa-question fa-x"></i></span>
			</a> <a href="login.jsp" data-toggle="tooltip" data-placement="left"
				data-original-title="退出" title=""> <span><i
					class="fa fa-sign-out "></i></span>
			</a>
		</div>
		<iframe id="main" name="main" width=1080 height=530 marginheight="10"
			scrolling="yes" src="welcome.jsp" frameBorder=0
			onLoad="iFrameHeight()"></iframe>
	</div>


	<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/accordion.js"></script>
	<script type="text/javascript">
		//使页面的大小自适应iframe
		function iFrameHeight() {
			var ifm = document.getElementById("main");
			var subWeb = document.frames ? document.frames["main"].document
					: ifm.contentDocument;
			if (ifm != null && subWeb != null) {
				//使页面的大小自适应iframe,反过来就是是iframe适应页面的大小
				subWeb.body.scrollHeight = ifm.height;
			}
		}
		$(function() {
			$(".nav").accordion({
				speed : 500,
				closedSign : '+',
				openedSign : '-'
			});
			$(".nav").hover(function() {
				$(this).css("overflow", "auto")
			}, function() {
				$(this).css("overflow", "hidden")
			})
		});
		$(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<script type="text/javascript">
		var jwindow = $(window);
		jwindow.scroll(function() {
			var scrollHeight = jwindow.scrollTop();
			var screenHeight = jwindow.height();
			var screenWidth = jwindow.width();
			if (scrollHeight > 90) {
				$("#leftcontent").css({
					"color" : "#00f",
					"position" : "fixed",
					"top" : "0px"
				});
			} else {
				$("#leftcontent").css({
					"color" : "#000",
					"position" : "static"
				});
			}
		});
	</script>


</body>
</html>