<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>品牌管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<style type="text/css">
#show>td {
	display: table-cell;
	vertical-align: middle;
}

#show>td>input {
	height: 15px;
	width: 150px;
	color: gray;
	border: none;
	outline: none;
	text-align: center;
}

#show>td>input[type='text']:disabled {
	color: black;
	background-color: white;
}

#update {
	display: none;
}
</style>
<script src="js/jquery-2.2.4.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	var change = function(btn) {
		$($(btn))
				.each(
						function() {
							var tr = $(this).parents("td").parents("tr");
							var tdList = $(this).parents("td").parents("tr")
									.children();
							for (var i = 0; i < tdList.length - 1; i++) {
								var input = $(tr).children("td").eq(i)
										.children("input");
								$(input).attr("disabled", false);
							}
							$(btn).hide();
							$(btn).siblings("button[value='update']").show();
							var id = $(tr).children("td").eq(0).children(
									"input").attr("value");
							sessionStorage.setItem("id", id);
						});
	}

	var save = function(btn) {
		$($(btn)).each(function() {
			var tr = $(this).parents("td").parents("tr");
			var tdList = $(this).parents("td").parents("tr").children();
			for (var i = 0; i < tdList.length - 1; i++) {
				var input = $(tr).children("td").eq(i).children("input");
				$(input).attr("disabled", false);
				$(input).attr("readonly", true);
			}
			var btnObj = $(btn).parents("td").children();
			for (var i = 0; i < btnObj.length; i++) {
				if ($(btnObj[i]).css("display") == "none") {
					$(btnObj[i]).show();
				}
			}
		});
		var idSession = sessionStorage.getItem("id");
		var method = $(btn).attr("value");
		alert("正在保存,请稍后。。。");
		if ($(btn).css("display") == "inline-block") {
			$(btn).hide();
			$("#operate").attr(
					"action",
					"operateProductInfo.do?method=" + method + "&idSession="
							+ idSession);
			$("#operate").submit();
		}
	}

	var del = function(btn) {
		$($(btn))
				.each(
						function() {
							var tr = $(this).parents("td").parents("tr");
							var tdList = $(this).parents("td").parents("tr")
									.children();
							for (var i = 0; i < tdList.length - 1; i++) {
								var input = $(tr).children("td").eq(i)
										.children("input");
								$(input).attr("disabled", false);
								$(input).attr("readonly", true);
							}
							var method = $(btn).attr("value");
							var id = $(tr).children("td").eq(0).children(
									"input").attr("value");
							alert("是否要删除此项？");
							$(btn).parents("td").parents("tr").remove();
							$("#operate").attr(
									"action",
									"operateProductInfo.do?method=" + method
											+ "&id=" + id);
							$("#operate").submit();
						});

	}

	function mouseOver(tr) {
		var tdList = $(tr).children();
		for (var i = 0; i < tdList.length - 1; i++) {
			var input = $(tr).children("td").eq(i).children("input");
			$(input).css("background-color", "#f5f5f5");
		}
	}

	function mouseOut(tr) {
		var tdList = $(tr).children();
		for (var i = 0; i < tdList.length - 1; i++) {
			var input = $(tr).children("td").eq(i).children("input");
			$(input).css("background-color", "white");
		}
	}
</script>
</head>
<body>
	<div style="text-align: center">
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="success">
					<td>编号</td>
					<td>类别</td>
					<td>标题</td>
					<td>价格</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody>
				<form id="operate" action="" method="post">
					<c:choose>
						<c:when test="${not empty pageData.page}">
							<c:forEach var="proInfo" items="${pageData.page}">
								<tr id="show" onmouseover="javascript:mouseOver(this);"
									onmouseout="javascript:mouseOut(this);">
									<td><input name="id" type="text" disabled="true"
										value="${proInfo.id }"></td>
									<td><input name="detail" type="text" disabled="true"
										value="${proInfo.detail }"></td>
									<td><input name="title" type="text" disabled="true"
										value="${proInfo.title }"></td>
									<td><input name="price" type="text" disabled="true"
										value="${proInfo.price }"></td>
									<td>
										<button type="button" onclick="javascript:change(this);"
											class="btn btn-success btn-sm-2" name="method">
											<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
										</button>
										<button type="button" onclick="javascript:save(this);"
											class="btn btn-success btn-sm-2" id="update" name="method"
											value="update">
											<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>保存
										</button>
										<button type="button" onclick="javascript:del(this);"
											class="btn btn-danger btn-sm-2" id="delete" name="method"
											value="delete">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
										</button>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5">对不起，没有找到相应的页面</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</form>
			</tbody>
		</table>
		<div style="margin: 0 auto">
			<form action="queryProductInfo.do?count=${pageData.pageCount }"
				method="post">
				当前${pageData.currentPage }/${pageData.totalPage }页&nbsp;&nbsp;&nbsp;
				<button class="btn btn-primary" type="submit" name="pageIndex"
					value="1">首页</button>
				<button class="btn btn-primary" type="submit" name="pageIndex"
					value="${pageData.currentPage-1 }">上一页</button>
				<button class="btn btn-primary" type="submit" name="pageIndex"
					value="${pageData.currentPage+1 }">下一页</button>
				<button class="btn btn-primary" type="submit" name="pageIndex"
					value="${pageData.totalPage }">尾页</button>
				<span style="vertical-align: middle"> <input height="20px"
					style="border-radius: 10px; border: 1px solid #c3c3c3; height: 40px"
					type="text" name="pageIndex" placeholder="请输入要跳转的页面数">
					<button class="btn btn-primary" type="submit">跳转</button>
				</span>
			</form>
		</div>
	</div>
</body>
</html>