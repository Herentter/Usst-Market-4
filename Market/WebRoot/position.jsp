<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>职位分配</title>
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
						<h2>职 位 分 配</h2>
					</div>

					<form id="position" method="post" class="form-horizontal"
						action="position.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="position_id"
									name="position_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">职务名称</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="position_name"
									name="position_name" placeholder="请填写职务名称">
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