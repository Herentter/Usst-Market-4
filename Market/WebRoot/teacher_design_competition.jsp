<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css"> -->
<link rel="stylesheet" media="screen" href="css/teacher_design.css" />
<link href="css/lyz.calendar.css" rel="stylesheet" type="text/css" />
</head>
<form id="msform" action="designCompetition.do" method="post">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active">step 1</li>
		<li>step 2</li>
		<li>step 3</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">竞赛信息</h2>
		<!-- <h3 class="fs-subtitle">This is step 1</h3> -->
		<div>
			<div class="design3_left">
				<label>竞赛名称：</label>
			</div>
			<div class="design3_right">
				<input type="text" name="name" placeholder="竞赛名称" />
			</div>
		</div>
	
		<div>
			<div class="design3_left">开始时间:</div>
			<div class="design3_right"><input type="date" id="beginDate" name=start_time placeholder="" /></div>
		</div>
		<div>
			<div class="design3_left">结束时间:</div>
			<div class="design3_right"><input type="date" id="endDate" name="end_time" placeholder="" /></div>
		</div>
		
		
		<input type="button" name="next" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset>
		 <h2 class="fs-title">团队信息</h2> 
		<label>竞赛团队数：</label><br>
		<select name="team">
			<option>--请输入--</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
		</select>
		<label>团队最大人数：</label>
		<select name="member">
			<option>--请输入--</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
		</select>
		
		<%  
            String id=request.getParameter("id");
        %>
		<input type="hidden" name="teacherId" value="<%=id%>"/>
		<input type="button" name="previous" class="previous action-button" value="返回" />
		<input type="button" name="next" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">竞赛信息</h2>
		<label>竞赛季度数：</label>
		<select name="quarter">
			<option>--请输入--</option>
			<option>6</option>
			<option>10</option>
			<option>12</option>
			<option>18</option>
		</select>
		<label>实体店与网店销售比率：</label>
		<select name="physicalRate">
			<option value=0.6>--请输入--</option>
			<option value=0.8>8:2</option>
			<option value=0.7>7:3</option>
			<option value=0.6>6:4</option>
			<option value=0.5>5:5</option>
			<option value=0.4>4:6</option>
			<option value=0.3>3:7</option>
			<option value=0.2>2:8</option>
		</select>
		<input type="button" name="previous" class="previous action-button" value="返回" />
		<input type="submit" value="提交">

	</fieldset>
</form>
<script src="js/jquery-2.2.4.js" type="text/javascript"></script>
<script src="js/easing.js" type="text/javascript"></script>
<script src="js/zzsc.js" type="text/javascript"></script>
<script type="text/javascript" src="js/lyz.calendar.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#beginDate").calendar({
            controlId: "divDate",                  // 弹出的日期控件ID，默认: $(this).attr("id") + "Calendar"
            speed: 200,                            // 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000),默认：200
            complement: true,                      // 是否显示日期或年空白处的前后月的补充,默认：true
            readonly: true,                        // 目标对象是否设为只读，默认：true
            /* upperLimit: new Date(), */                // 日期上限，默认：NaN(不限制)
            lowerLimit: new Date("2011/01/01"),    // 日期下限，默认：NaN(不限制)
            callback: function () {                // 点击选择日期后的回调函数
                                                   //alert("您选择的日期是：" + $("#beginDate").val());
            }
        });
        $("#endDate").calendar({
        	lowerLimit: new Date()
        });
	})
</script>
</body>
</html>