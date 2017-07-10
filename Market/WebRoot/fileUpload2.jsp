<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>文件上传</title>
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
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap.js"></script>
</head>
<body>
	<div id="container">
		<div class="row">
			<section>
				<div class="col-lg-8 col-lg-offset-2">
					<div class="page-header">
						<h2>文件上传</h2>
					</div>

					<form id="multiPartFileUpload" method="post"
						class="form-horizontal" action="multiPartFileUpload.do"
						enctype="multipart/form-data">

						<div class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="user_name"
									name="user_name" placeholder="请填写姓名">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">文件</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" multiple="multiple"
									id="files" name="files">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-8 col-sm-offset-2">
								<button type="submit" class="btn btn-primary" name="signup"
									value="signup">上传</button>
								<button type="reset" class="btn btn-primary" name="close"
									value="colse">取消</button>
							</div>
						</div>
					</form>
				</div>
			</section>
			<!-- :form -->
		</div>
	</div>
</body>
</html>