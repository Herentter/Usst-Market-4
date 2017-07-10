<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>客户需求</title>
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
						<h2>客 户 需 求</h2>
					</div>

					<form id="demand" method="post" class="form-horizontal"
						action="demand.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="demand_id"
									name="demand_id" placeholder="请填写编号">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">需求详情</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="demand_detail"
									name="demand_detail" placeholder="请填写需求详情">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">实用型需求量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="demand_practical"
									name="demand_practical" placeholder="请填写实用型需求量">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">极致型需求量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="demand_perfect"
									name="demand_perfect" placeholder="请填写极致型需求量">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">商务型需求量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="demand_business"
									name="demand_business" placeholder="请填写商务型需求量">
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