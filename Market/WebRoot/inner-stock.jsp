<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>内部持股</title>
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
						<h2>内 部 持 股</h2>
					</div>

					<form id="inner-block" method="post" class="form-horizontal"
						action="inner-block.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_id"
									name="inner-block_id" placeholder="请填写编号">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">竞赛编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_competitionid"
									name="inner-block_competitionid" placeholder="请填写竞赛编号">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">公司编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_companyid"
									name="inner-block_companyid" placeholder="请填写公司编号">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">季度数</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_quarter"
									name="inner-block_quarter" placeholder="请填写季度数">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">持股类型</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_type"
									name="inner-block_type" placeholder="请填写设持股类型">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">持股者姓名</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_name"
									name="inner-block_name" placeholder="请填写持股者姓名">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">持股数量</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_amount"
									name="inner-block_amount" placeholder="请填写持股数量">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">单股价格</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_price"
									name="inner-block_price" placeholder="请填写单股价格">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">总价值</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="inner-block_totalprice"
									name="inner-block_totalprice" placeholder="请填写总价值">
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