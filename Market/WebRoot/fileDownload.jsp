<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>文件下载列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-2.2.4.js"></script>
<script type="text/javascript">
	function show() {
		window.open("fileShow.jsp", "main",

		"height=400,width=600,scrollbars=no,location=no");
	}
</script>
</head>
<body>
	<div style="text-align: center">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<td colspan="3" text-align="center"><label>文件列表</label></td>
				</tr>
			</thead>
			<tbody>
				<form action="fileDownload.do" method="post"
					enctype="multipart/form-data">
					<c:choose>
						<c:when test="${not empty sessionScope.fileList }">
							<c:forEach var="file" items="${sessionScope.fileList }">
								<tr>
									<td><input type="text" class="col-sm-2 form-control"
										id="file_name" name="file_name" placeholder="请输入文件名"></td>
									<td><input type="text" class="col-sm-4 form-control"
										id="file" name="file" value="${file }"></td>
									<td>
										<button type="submit" class="btn btn-primary" name="signup"
											value="signup">下载</button>
										<button type="button" onclick="javascript:show();"
											class="btn btn-primary" name="showFile" value="showFile">查看</button>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="3" text-align="center">抱歉，未找到文件</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</form>
			</tbody>
		</table>
	</div>
</body>
</html>