<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>目标与策略</title>
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
						<h2>目 标 与 策 略</h2>
					</div>

					<form id="strategy" method="post" class="form-horizontal"
						action="strategy.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="strategy_id"
									name="strategy_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">策略详情</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="strategy_detail"
									name="strategy_detail" placeholder="请填写策略详情">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">策略类型</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="strategy_title"
									name="strategy_title" placeholder="请填写策略类型">
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