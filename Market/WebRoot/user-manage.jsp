<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>用户管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="css/top.css">
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
						<h2>用 户 管 理</h2>
					</div>
					<form id="manageUser" method="post" class="form-horizontal"
						action="manageUser.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="manage_id"
									name="manage_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">管理员编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="admin_id"
									name="admin_id" placeholder="请填写管理员编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">教师编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="teacher_id"
									name="teacher_id" placeholder="请填写教师编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_email"
									name="user_email" placeholder="请填写邮箱">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">密码</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="user_pwd"
									name="user_pwd" placeholder="请设置密码">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">确认密码</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="confirm_pwd"
									name="confirm_pwd" placeholder="请再次输入密码">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-8 col-sm-offset-2">
								<button type="submit" class="btn btn-primary" name="signup"
									value="Sign up">提交</button>
								<button type="reset" class="btn btn-primary" name="signup"
									value="Close">取消</button>
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
	<script type="text/javascript" src="http://shouce.ren/static/ad/gg.js"></script>
</body>
</html>