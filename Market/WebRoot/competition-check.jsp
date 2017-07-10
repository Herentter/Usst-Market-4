<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>创建竞赛</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/bootstrap.css" />
<style type="text/css">
body {
	margin: 5px;
	width: 98%;
}

#container {
	width: 100%;
}

.page-header h2 {
	font-size: 30px;
}
</style>
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script type="text/javascript" src="js/jedate.js"></script>
</head>
<body>
	<div id="container">
		<div class="row">
			<section>
				<div class="col-lg-8 col-lg-offset-2">
					<div class="page-header">
						<h2>竞 赛 审 核</h2>
					</div>
					<form id="checkcompetition" method="post" class="form-horizontal"
						action="checkCompetition.do">
						<div class="form-group">
							<label class="col-sm-2 control-label">竞赛编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_id"
									name="com_id" value="${sessionName.com_id }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">管理员编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="admin_id"
									name="admin_id" value="${subCompetition.com_id }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">教师编号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="teacher_id"
									name="teacher_id" value="${subCompetition.teacher_id }">

							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">本次竞赛人数</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_number"
									name="com_number" value="${subCompetition.com_number }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">参赛队伍数</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_team_num"
									name="com_team_num" value="${subCompetition.com_team_num }">
							</div>
						</div>

						<!-- <div class="form-group">
							<label class="col-sm-2 control-label">竞赛名称</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_name"
									name="com_name" value="${subCompetition.com_name }">
							</div>
						</div> -->

						<div class="form-group">
							<label class="col-sm-2 control-label">季度数</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_quater"
									name="com_quater" value="${subCompetition.com_quater }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">参赛队伍的最大学员数</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_team_max_memb"
									name="com_team_max_memb"
									value="${subCompetition.com_team_max_memb }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">竞赛地点</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_address"
									name="com_address" value="${subCompetition.com_address }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">竞赛开始日期</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_date"
									name="com_date" value="${subCompetition.com_date }">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">竞赛结束日期</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="com_validity"
									name="com_validity" value="${subCompetition.com_validity }">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-8">
								<button type="submit" class="btn btn-primary" name="signup"
									value="Sign up">确定</button>
								<button type="reset" class="btn btn-primary" name="signup"
									value="Close">取消</button>
							</div>
						</div>
					</form>
				</div>
			</section>
			<!-- :form -->
		</div>
	</div>
	<script type="text/javascript">
		jeDate({
			dateCell : "#com_date",
			format : "YYYY年MM月DD日 hh:mm:ss",
			festival : true,//是否显示节日
			isinitVal : false,//是否初始化时间,默认为当前时间
			isTime : true,//是否开启时间选择
			isClear : true, //是否显示清空 
			minDate : "1900-01-01 00:00:00",
			maxDate : "2099-12-31 23:59:59",
			zIndex : 999, //弹出层的层级高度 
			choosefun : function(val) { //选中日期后的回调 
			},
			clearfun : function(val) { //清除日期后的回调
			},
			okfun : function(val) { //点击确定后的回调
				alert(val)
			}
		})
		jeDate({
			dateCell : "#com_validity",
			format : "YYYY年MM月DD日 hh:mm:ss",
			festival : true,
			isinitVal : false,
			isTime : true,
			minDate : jeDate.now(7),
			maxDate : "2099-12-31 23:59:59",
			okfun : function(val) {
				alert(val)
			}
		})
	</script>
</body>
</html>