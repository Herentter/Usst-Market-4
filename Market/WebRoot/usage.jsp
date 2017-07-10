<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>产品用途</title>
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
						<h2>产 品 用 途</h2>
					</div>

					<form id="usage" method="post" class="form-horizontal"
						action="usage.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="usage_id"
									name="usage_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">产品用途详情</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="usage_detail"
									name="usage_detail" placeholder="请填写产品用途详情">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">实用型用途需求量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="usage_practical"
									name="usage_practical" placeholder="请填写实用型用途需求量">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">极致型用途需求量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="usage_perfect"
									name="usage_perfect" placeholder="请填写极致型用途需求量">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">商务型用途需求量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="usage_business"
									name="usage_business" placeholder="请填写商务型用途需求量">
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