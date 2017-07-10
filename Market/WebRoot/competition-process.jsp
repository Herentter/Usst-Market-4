<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>竞赛基本流程</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/top.css">
<style type="text/css">
#wizard {
	border: 5px solid #789;
	font-size: 12px;
	height: 410px;
	margin: 20px auto;
	width: 500px;
	overflow: hidden;
	position: relative;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}

#wizard .items {
	width: 20000px;
	clear: both;
	position: absolute;
}

#wizard .right {
	float: right;
}

#wizard #status {
	height: 35px;
	background: #123;
	padding-left: 25px !important;
}

#status li {
	float: left;
	color: #fff;
	padding: 10px 30px;
}

#status li.active {
	background-color: #369;
	font-weight: normal;
}

.input {
	width: 240px;
	height: 18px;
	margin: 10px auto;
	line-height: 20px;
	border: 1px solid #d3d3d3;
	padding: 2px
}

.page {
	padding: 20px 30px;
	width: 500px;
	float: left;
}

.page h3 {
	height: 42px;
	font-size: 16px;
	border-bottom: 1px dotted #ccc;
	margin-bottom: 20px;
	padding-bottom: 5px
}

.page h3 em {
	font-size: 12px;
	font-weight: 500;
	font-style: normal
}

.page p {
	line-height: 24px;
}

.page p label {
	font-size: 14px;
	display: block;
}

.btn_nav {
	height: 36px;
	line-height: 36px;
	margin: -20px auto;
}

.prev, .next {
	width: 100px;
	height: 32px;
	line-height: 32px;
	border: 1px solid #d3d3d3;
	cursor: pointer
}
</style>
</head>
<body>
	<div class="container">
		<div class="demo">
			<h2 class="title">
				<a href="#">竞赛基本流程</a>
			</h2>
			<form action="#" method="post">
				<div id="wizard">
					<ul id="status">
						<li class="active"><strong>1.</strong>创建竞赛</li>
						<li><strong>2.</strong>竞赛审核</li>
						<li><strong>3.</strong>开始竞赛</li>
					</ul>
					<div class="items">
						<div class="page">
							<h3>
								创建一个竞赛<br /> <em>请填写您的竞赛信息。</em>
							</h3>
							<p>
								<label>用户名：</label><input type="text" class="input" id="user"
									name="username" />
							</p>
							<p>
								<label>密码：</label><input type="password" class="input" id="pass"
									name="password" />
							</p>
							<p>
								<label>确认密码：</label><input type="password" class="input"
									id="pass1" name="password1" />
							</p>
							<div class="btn_nav">
								<input type="button" class="next right" value="下一步&raquo;" />
							</div>
						</div>
						<div class="page">
							<h3>
								填写联系信息<br /> <em>请告诉我们您的联系方式。</em>
							</h3>
							<p>
								<label>E-mail：</label><input type="text" class="input"
									name="email" />
							</p>
							<p>
								<label>QQ：</label><input type="text" class="input" name="qq" />
							</p>
							<p>
								<label>手机号码：</label><input type="text" class="input"
									name="mobile" />
							</p>
							<div class="btn_nav">
								<input type="button" class="prev" style="float: left"
									value="&laquo;上一步" /> <input type="button" class="next right"
									value="下一步&raquo;" />
							</div>
						</div>
						<div class="page">
							<h3>
								完成<br /> <em>点击确定开始竞赛。</em>
							</h3>
							<p>请点击“确定”按钮开始竞赛。</p>
							<br /> <br /> <br />
							<div class="btn_nav">
								<input type="button" class="prev" style="float: left"
									value="&laquo;上一步" /> <input type="button" class="next right"
									id="sub" value="确定" />
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/scrollable.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#wizard").scrollable(
					{
						onSeek : function(event, i) {
							$("#status li").removeClass("active").eq(i)
									.addClass("active");
						},
						onBeforeSeek : function(event, i) {
							if (i == 1) {
								var user = $("#user").val();
								if (user == "") {
									alert("请输入用户名！");
									return false;
								}
								var pass = $("#pass").val();
								var pass1 = $("#pass1").val();
								if (pass == "") {
									alert("请输入密码！");
									return false;
								}
								if (pass1 != pass) {
									alert("两次密码不一致！");
									return false;
								}
							}
						}
					});
			$("#sub").click(function() {
				var data = $("form").serialize();
				alert(data);
			});
		});
	</script>
</body>
</html>