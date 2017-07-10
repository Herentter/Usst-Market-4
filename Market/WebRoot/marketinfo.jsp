<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>市场信息</title>
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
						<h2>市 场 信 息</h2>
					</div>

					<form id="marketinfo" method="post" class="form-horizontal"
						action="marketinfo.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_id"
									name="marketinfo_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">城市</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_city"
									name="marketinfo_city" placeholder="请填写实用型价格">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">线下实用型成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_practical"
									name="marketinfo_practical" placeholder="请填写线下实用型成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线下极致型成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_perfect"
									name="marketinfo_perfect" placeholder="请填写线下极致型成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线下商务型成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_business"
									name="marketinfo_business" placeholder="请填写线下商务型成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线上实用型成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_webpractical"
									name="marketinfo_webpractical" placeholder="请填写线下实用型成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线上极致型成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_webperfect"
									name="marketinfo_webperfect" placeholder="请填写线下极致型成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线上商务型成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_webbusiness"
									name="marketinfo_webbusiness" placeholder="请填写线下商务型成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线下开设成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_open"
									name="marketinfo_open" placeholder="请填写线下开设成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线下租赁成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_rent"
									name="marketinfo_rent" placeholder="请填写线下租赁成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线上开设成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_webopen"
									name="marketinfo_webopen" placeholder="请填写线上开设成本">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">线上租赁成本</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="marketinfo_webrent"
									name="marketinfo_webrent" placeholder="请填写线上租赁成本">
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