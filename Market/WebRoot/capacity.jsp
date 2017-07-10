<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>固定产能</title>
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
						<h2>固 定 产 能</h2>
					</div>

					<form id="capacity" method="post" class="form-horizontal"
						action="capacity.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="capacity_id"
									name="capacity_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">日产量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="capacity_day"
									name="capacity_day" placeholder="请设置日产量">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">季度产量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="capacity_quarter"
									name="capacity_quarter" placeholder="请设置季度产量">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">资本性投资</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="capacity_invest"
									name="capacity_invest" placeholder="请填写资本性投资">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">单位资本性投资</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="capacity_perinvest"
									name="capacity_perinvest" placeholder="请填写单位资本性投资">
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