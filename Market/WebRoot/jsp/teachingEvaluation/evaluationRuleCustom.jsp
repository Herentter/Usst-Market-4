<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath %>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自定义教学质量评估</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">

<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
            <div class="panel-heading">
                <span>自定义教学质量评估</span>
            </div>			
            
            <div class="panel-body">
				<p>
				教学质量评估系统会客观评估每个学员的表现，以视其是否达到了课程规定的教学目标。
				批判型思维、分析型思维、及现状烦死，是许多课程的主要目标。
				该评估可以帮助教员一级教务负责人评估学生在上述方面的能力和表现。
				具体地说，该评估可用来测试学员的以下能力：
				</p>
				<ul>
					<li>认识、理解、一级预测企业经营的商业环境</li>
					<li>认识、理解、一级预测企业经营的商业环境</li>
					<li>认识、理解、一级预测企业经营的商业环境</li>
					<li>认识、理解、一级预测企业经营的商业环境</li>
				</ul>
				<p>如果您希望对学员进行该项评估，请将您的联系方式提供给ILS的代理商，我们将尽快与您联系。</p>
				
				<form action="" method="post">
					<table>
						<tr>
							<td>姓名</td>
							<td><input type="text"/></td>
						</tr>
						<tr>
							<td>电子邮件</td>
							<td><input type="text"/></td>
						</tr>
						<tr>
							<td>电话号码</td>
							<td><input type="text"/></td>
						</tr>
					</table>
					<label>请告诉我们您将如何使用该评估。</label><br/>
					<textarea rows="5" cols="40">
					请输入您的意见！
					</textarea><br/>
					<input type="submit" value="提交"/>
					<input type="reset" value="取消"/>
				</form>
				
            </div>
        	
        	<div class="panel-footer"></div>    
    	</div>
	</div>
</body>
</html>