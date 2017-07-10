<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>个人目标</title>
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
</head>
<body>
	<div id="container">
		<div class="row">
			<section>
				<div class="col-lg-8 col-lg-offset-2">
					<div class="page-header">
						<h2>个 人 目 标</h2>
					</div>

					<form id="personalgoal" method="post" class="form-horizontal"
						action="personalgoal.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="personalgoal_id"
									name="personalgoal_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">目标详情</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="personalgoal_detail"
									name="personalgoal_detail" placeholder="请填写目标详情">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">目标标题</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="personalgoal_title"
									name="personalgoal_title" placeholder="请填写目标标题">
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