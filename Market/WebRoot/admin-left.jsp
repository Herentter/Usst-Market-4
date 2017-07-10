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
<title>Insert title here</title>
<style type="text/css">
a {
	color: white;
}

.nav {
	width: 200px;
	padding: 40px 28px 25px 0;
	height: 100%;
	background: #1e485d;
	color: white;
	box-sizing: border-box; -
	-moz-box-sizing: border-box;
}

ul.nav {
	padding: 0;
	margin: 0;
	font-size: 1em;
	line-height: 0.5em;
	list-style: none;
}

ul.nav li {
	margin-top: 10px;
}

ul.nav li a {
	line-height: 10px;
	font-size: 16px;
	padding: 10px 5px;
	color: #ddd;
	text-indent: 20px;
	display: block;
	text-decoration: none;
}

ul.nav>li:nth-of-type(1) {
	margin-top: 0px;
}

ul.nav li a:hover {
	background-color: #675C7C;
	color: white;
}

ul.nav ul {
	margin: 0;
	padding: 0;
	display: none;
	background: #333;
}

ul.nav ul li {
	margin: 0;
	padding: 0;
	clear: both;
}

ul.nav ul li a {
	padding-left: 20px;
	font-size: 14px;
	font-weight: normal;
}

ul.nav ul li a:hover {
	background-color: #D3C99C;
	color: #675C7C;
}

ul.nav ul li a:active {
	background-color: #D3C99C;
	color: #675C7C;
}

ul.nav ul li a:current {
	background-color: #f00;
	color: #f00;
}

ul.nav ul ul li a {
	color: silver;
	padding-left: 40px;
}

ul.nav ul ul li a:hover {
	background-color: #D3CEB8;
	color: #675C7C;
}

ul.nav span {
	float: right;
}
</style>
</head>
<body>
	<ul class="nav">
		<li><a href="#none">Home<i></i></a>
			<ul>
				<li><a href="home-intro.jsp" target="main">简介</a></li>
				<li><a href="home-details.jsp" target="main">业务详情</a></li>
				<li><a href="home-techguide.jsp" target="main">技术指导</a></li>
				<li><a href="home-aftersales.jsp" target="main">售后服务</a></li>
				<li><a href="home-about.jsp" target="main">关于我们</a></li>
			</ul>
		</li>
		<li><a href="#none">创建竞赛</a>
			<ul>
				<li><a href="competition-intro.jsp" target="main">简介</a></li>
				<li><a href="competition-process.jsp" target="main">基本流程</a></li>
				<li><a href="competition-creation.jsp" target="main">创建竞赛</a></li>
				<li><a href="competition-check.jsp" target="main">审核竞赛</a></li>
				<li><a href="competition-query.jsp" target="main">竞赛信息</a></li>
				<li><a href="competition-log.jsp" target="main">日志</a></li>
			</ul>
		</li>
		<li><a href="#none">用户管理</a>
			<ul style="display: none">
				<li><a href="user-intro.jsp" target="main">简介</a></li>
				<li><a href="user-add.jsp" target="main">添加用户</a></li>
				<li><a href="user-query.jsp" target="main">查询用户</a></li>
				<li><a href="user-manage.jsp" target="main">用户管理</a></li>
				<li><a href="user-log.jsp" target="main">日志</a></li>
			</ul>
		</li>
		<li><a href="#none">信息管理</a>
			<ul>
				<li><a href="info-manage-intro.jsp" target="main">信息管理简介</a></li>
				<li><a href="#" target="main">教员信息管理</a>
					<ul>
						<li><a href="sale-tech.jsp" target="main">售后与技术支持</a></li>
						<li><a href="reference.jsp" target="main">教师参考书</a></li>
						<li><a href="javascript:;" target="main">设计品牌</a></li>
					</ul>
				</li>
				<li><a href="#" target="main">学员信息管理</a>
					<ul>
						<li><a href="demand.jsp" target="main">客户需求</a></li>
						<li><a href="usage.jsp" target="main">产品用途</a></li>
						<li><a href="price.jsp" target="main">愿意支付的价格</a></li>
						<li><a href="marketinfo.jsp" target="main">市场规模</a></li>
						<li><a href="position.jsp" target="main">职位分配</a></li>
						<li><a href="teamrule.jsp" target="main">团队规则</a></li>
						<li><a href="personalgoal.jsp" target="main">个人目标</a></li>
						<li><a href="staffwage.jsp" target="main">员工薪酬</a></li>
						<li><a href="marketinfo.jsp" target="main">实体销售中心</a></li>
						<li><a href="marketinfo.jsp" target="main">网络销售中心</a></li>
						<li><a href="productInfo-query.jsp" target="main">品牌管理</a></li>
						<li><a href="capacity.jsp" target="main">固定产能</a></li>
						<li><a href="inner-stock.jsp" target="main">内部持股</a></li>
					</ul>
				</li>
				<li><a href="#" target="main">文件管理</a>
					<ul>
						<li><a href="fileUpload1.jsp" target="main">单文件上传</a></li>
						<li><a href="fileUpload2.jsp" target="main">多文件上传</a></li>
						<li><a href="fileDownload.jsp" target="main">文件下载</a></li>
						<li><a href="fileShow.jsp" target="main">查看文件</a></li>
					</ul>
				</li>
				<li><a href="info-manage-log.jsp" target="main">日志</a></li>
			</ul>
		</li>
	</ul>

	<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
	<script type="text/javascript" src="js/accordion.js"></script>
	<script type="text/javascript">
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
	</script>

</body>
</html>