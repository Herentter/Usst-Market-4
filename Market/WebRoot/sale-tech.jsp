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
<title>售后与技术支持</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<style type="text/css">
#container {
	width: 100%;
	height: 620px;
}

.page-header h2 {
	font-size: 30px;
}
</style>
</head>
<body>
	<div id="container">
		<div class="row">
			<section>
				<div class="col-lg-8 col-lg-offset-2">
					<div class="page-header">
						<h2>问 题 反 馈</h2>
					</div>

					<form id="saletech" method="post" class="form-horizontal"
						action="saletech.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="saletech_id"
									name="saletech_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">问题类型</label>
							<div class="col-sm-8">
								<input type="text" class="form-control"
									id="saletech_type" name="saletech_type"
									placeholder="请填写问题类型">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="saletech_name"
									name="saletech_name" placeholder="请填写用户名">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">用户邮箱</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="saletech_email"
									name="saletech_email" placeholder="请填写用户邮箱">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">主题</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="saletech_topic"
									name="saletech_topic" placeholder="请填写主题">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">问题详情</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="saletech_detail"
									name="saletech_detail" placeholder="请填写问题详情">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">问题重要性</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="saletech_importance"
									name="saletech_importance" placeholder="请填写问题重要性">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-8 col-sm-offset-2">
								<button type="submit" class="btn btn-primary" name="signup"
									value="Sign up">提交</button>
								<button type="reset" class="btn btn-primary">重置表单</button>
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
</body>
</html>