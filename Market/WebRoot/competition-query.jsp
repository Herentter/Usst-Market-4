<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>查询用户</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Created By 陈立阳" />
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
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>
	<div id="container">
		<div class="row">
			<section>
				<div class="col-lg-8 col-lg-offset-2">
					<div class="page-header">
						<h2>查 询 竞 赛 信 息</h2>
					</div>

					<form id="queryCompetition" method="post" class="form-horizontal"
						action="queryCompetition.do">

						<div class="form-group">
							<label class="col-sm-3 control-label">请选择每页要显示的条数</label>
							<div class="col-sm-8">
								<select type="select" class="form-control" class="count"
									name="count">
									<option value="4">4</option>
									<option value="6">6</option>
									<option value="8">8</option>
									<option value="10">10</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-10 col-sm-offset-2">
								<button type="submit" class="btn btn-primary" name="signup"
									value="Sign up">提交</button>
								<button type="reset" class="btn btn-primary" name="signup"
									value="Close">取消</button>
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
</body>
</html>