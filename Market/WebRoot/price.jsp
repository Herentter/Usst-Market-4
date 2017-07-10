<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>愿意支付的价格</title>
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
						<h2>愿 意 支 付 的 价 格</h2>
					</div>

					<form id="price" method="post" class="form-horizontal"
						action="price.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="price_id"
									name="price_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">实用型价格</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="price_practical"
									name="price_practical" placeholder="请填写实用型价格">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">极致型价格</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="price_perfect"
									name="price_perfect" placeholder="请填写极致型价格">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">商务型价格</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="price_business"
									name="price_business" placeholder="请填写商务型价格">
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