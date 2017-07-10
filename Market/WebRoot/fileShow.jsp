<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>查看文件</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<style type="text/css">
img {
	width: 100%;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<form class="form-horizontal" role="form">
		<c:choose>
			<c:when test="${not empty sessionScope.fileList }">
				<c:forEach var="file" items="${sessionScope.fileList }">
					<div class="form-group">
						<label for="filename" class="col-sm-2 control-label">文件名</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="filename"
								value="${file }">
						</div>
					</div>
					<img alt="这是我上传的图片"
						src="D:\eclipse\tomcat\apache-tomcat-7.0.77\webapps\upload\27c314e3-050e-4883-9463-6dcc98f5213c#2.jpg"
						>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<label>抱歉,未找到文件！</label>
			</c:otherwise>
		</c:choose>
	</form>
</body>
</html>