<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Created By 陈立阳" />
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-typeahead.js"></script>
<script type="text/javascript">
	$('#topicInput')
			.typeahead(
					{
						source : function(query, process) {
							return $
									.ajax({
										url : 'autoComplete.do',
										type : 'post',
										data : {
											name : query
										},
										dataType : 'json',
										success : function(result) {
											// 这里的数据解析根据后台传入格式的不同而不同  
											if (result.code == "1") {
												var json = JSON
														.parse(result.data.data);
												var resultList = json.topicList
														.map(function(item) {
															var aItem = {
																id : item.id,
																name : item.displayName
															};
															return JSON
																	.stringify(aItem);
														});
												return process(resultList);
											} else {
												alert(result.msg);
											}
										}
									});
						},
						matcher : function(obj) {
							var item = JSON.parse(obj);
							return ~item.name.toLowerCase().indexOf(
									this.query.toLowerCase())
						},

						sorter : function(items) {
							var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
							while (aItem = items.shift()) {
								var item = JSON.parse(aItem);
								if (!item.name.toLowerCase().indexOf(
										this.query.toLowerCase()))
									beginswith.push(JSON.stringify(item));
								else if (~item.name.indexOf(this.query))
									caseSensitive.push(JSON.stringify(item));
								else
									caseInsensitive.push(JSON.stringify(item));
							}

							return beginswith.concat(caseSensitive,
									caseInsensitive)

						},

						highlighter : function(obj) {
							var item = JSON.parse(obj);
							var query = this.query.replace(
									/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
							return item.name.replace(new RegExp('(' + query
									+ ')', 'ig'), function($1, match) {
								return '<strong>' + match + '</strong>'
							})
						},

						updater : function(obj) {
							var item = JSON.parse(obj);
							$('#topicId').attr('value', item.id);
							return item.name;
						}

					})
</script>
</head>
<body>
	<input type="text" id="topicInput" name="topicName" placeholder="请输入话题"
		autocomplete="off" data-provide="typeahead" />
	<form:hidden id="topicId" name="topicId" path="labelId" />
</body>
</html>