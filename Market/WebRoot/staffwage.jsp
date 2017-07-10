<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>员工薪酬</title>
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
						<h2>员 工 薪 酬</h2>
					</div>

					<form id="staffwage" method="post" class="form-horizontal"
						action="staffwage.do">

						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="staffwage_id"
									name="staffwage_id" placeholder="请填写编号">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">竞赛编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="staffwage_competitionid"
									name="staffwage_competitionid" placeholder="请填写竞赛编号">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">公司编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="staffwage_companyid"
									name="staffwage_companyid" placeholder="请填写公司编号">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">季度数</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="staffwage_quarter"
									name="staffwage_quarter" placeholder="请填写季度数">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">薪酬清单项</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="staffwage_item"
									name="staffwage_item" placeholder="请填写薪酬清单项">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">清单项详情</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="staffwage_detail"
									name="staffwage_detail" placeholder="请填写清单项详情">
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