<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>添加用户</title>
<meta charset="utf-8" />
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
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript">
	function gradeChange() {
		var obj = document.getElementById("user_type");
		var value = obj.options[obj.selectedIndex].value;
		if (value == "admin") {
			document.getElementById("group6").style.display = "none";
			document.getElementById("group7").style.display = "none";
			document.getElementById("group8").style.display = "none";
			document.getElementById("group10").style.display = "none";
			document.getElementById("group11").style.display = "none";
			document.getElementById("group12").style.display = "none";
			document.getElementById("group13").style.display = "none";
			document.getElementById("group14").style.display = "none";
		} else if (value = "teacher") {
			document.getElementById("group6").style.display = "block";
			document.getElementById("group7").style.display = "block";
			document.getElementById("group8").style.display = "block";
			document.getElementById("group10").style.display = "block";
			document.getElementById("group11").style.display = "block";
			document.getElementById("group12").style.display = "block";
			document.getElementById("group13").style.display = "block";
			document.getElementById("group14").style.display = "block";
		}
	}
</script>
</head>
<body>
	<div id="container">
		<div class="row">
			<section>
				<div class="col-lg-8 col-lg-offset-2">
					<div class="page-header">
						<h2>添 加 用 户</h2>
					</div>

					<form id="addUser" method="post" class="form-horizontal"
						action="addUser.do">

						<div id="group1" class="form-group">
							<label class="col-sm-2 control-label">类型</label>
							<div class="col-sm-8">
								<select type="select" class="form-control" id="user_type"
									name="user_type" onchange="javascript:gradeChange();">
									<option grade="1" value="admin">管理员</option>
									<option grade="2" value="teacher" selected="selected">教师</option>
								</select>
							</div>
						</div>

						<div id="group2" class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_id"
									name="user_id" placeholder="请填写编号">
							</div>
						</div>

						<div id="group3" class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_name"
									name="user_name" placeholder="请填写姓名">
							</div>
						</div>

						<div id="group4" class="form-group">
							<label class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_email"
									name="user_email" placeholder="请填写邮箱">
							</div>
						</div>

						<div id="group5" class="form-group">
							<label class="col-sm-2 control-label">密码</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="user_pwd"
									name="user_pwd" placeholder="请设置密码">
							</div>
						</div>

						<div id="group6" class="form-group">
							<label class="col-sm-2 control-label">确认密码</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="confirm_pwd"
									name="confirm_pwd" placeholder="请再次输入密码">
							</div>
						</div>

						<div id="group7" class="form-group">
							<label class="col-sm-2 control-label">机构</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_org"
									name="user_org" placeholder="请填写所在机构">
							</div>
						</div>

						<div id="group8" class="form-group">
							<label class="col-sm-2 control-label">职位/头衔</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_position"
									name="user_position" placeholder="请填写职位或头衔">
							</div>
						</div>

						<div id="group9" class="form-group">
							<label class="col-sm-2 control-label">联系电话</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_phone"
									name="user_phone" placeholder="请填写联系电话">
							</div>
						</div>

						<div id="group10" class="form-group">
							<label class="col-sm-2 control-label">通讯地址</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_address"
									name="user_address" placeholder="请填写通讯地址">
							</div>
						</div>

						<div id="group11" class="form-group">
							<label class="col-sm-2 control-label">邮编</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_zip_code"
									name="user_zip_code" placeholder="请填写邮编">
							</div>
						</div>

						<div id="group12" class="form-group">
							<label class="col-sm-2 control-label">头像</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" id="user_picture"
									name="user_picture">
							</div>
						</div>

						<div id="group13" class="form-group">
							<label class="col-sm-2 control-label">国家</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_country"
									name="user_country" placeholder="请填写国家">
							</div>
						</div>

						<div id="group14" class="form-group">
							<label class="col-sm-2 control-label">城市</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_city"
									name="user_city" placeholder="请填写城市">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-8 col-sm-offset-2">
								<button type="submit" class="btn btn-primary" name="signup"
									value="Sign up">提交</button>
								<button type="button" class="btn btn-primary" id="validateBtn">自动验证</button>
								<button type="button" class="btn btn-primary" id="resetBtn">重置表单</button>
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {

			$('#addUser')
					.bootstrapValidator(
							{
								//        live: 'disabled',
								message : 'This value is not valid',
								feedbackIcons : {
									valid : 'glyphicon glyphicon-ok',
									invalid : 'glyphicon glyphicon-remove',
									validating : 'glyphicon glyphicon-refresh'
								},
								fields : {
									user_name : {
										message : 'The username is not valid',
										validators : {
											notEmpty : {
												message : 'The username is required and cannot be empty'
											},
											stringLength : {
												min : 6,
												max : 30,
												message : 'The username must be more than 6 and less than 30 characters long'
											},
											regexp : {
												regexp : /^[a-zA-Z0-9_\.]+$/,
												message : 'The username can only consist of alphabetical, number, dot and underscore'
											},
											remote : {
												url : 'remote.php',
												message : 'The username is not available'
											},
											different : {
												field : 'user_pwd',
												message : 'The username and password cannot be the same as each other'
											}
										}
									},
									user_email : {
										validators : {
											notEmpty : {
												message : 'The email is required and cannot be empty'
											},
											emailAddress : {
												message : 'The input is not a valid email address'
											}
										}
									},
									user_pwd : {
										validators : {
											notEmpty : {
												message : 'The password is required and cannot be empty'
											},
											identical : {
												field : 'confirm_pwd',
												message : 'The password and its confirm are not the same'
											},
											different : {
												field : 'user_name',
												message : 'The password cannot be the same as username'
											}
										}
									},
									confirm_pwd : {
										validators : {
											notEmpty : {
												message : 'The confirm password is required and cannot be empty'
											},
											identical : {
												field : 'user_pwd',
												message : 'The password and its confirm are not the same'
											},
											different : {
												field : 'user_name',
												message : 'The password cannot be the same as username'
											}
										}
									},
								}
							});
			$('#validateBtn').click(function() {
				$('#addUser').bootstrapValidator('validate');
			});

			$('#resetBtn').click(function() {
				$('#addUser').data('bootstrapValidator').resetForm(true);
			});

		});
	</script>
</body>
</html>