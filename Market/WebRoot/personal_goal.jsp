<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">
<style>
	body{
		width: 99%;
   		argin:4px;
	}
</style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">
            <span>个人目标</span>
        </div>
        <div class="panel-body">
           
            <form class="form-horizontal" role="form">
               <c:forEach items="${result}" var="entry">
	               <div class="form-group btn-grounp">
	                   <label for="password" class="col-md-2 col-xs-2 control-label">${entry.key }：</label>
	                   <div class="col-md-8 col-xs-8">
	                   	<c:forEach items="${entry.value}" var="item">
	                        <div class="">     
	                            <input type="checkbox" name="11" value="${item.id }"><label>${item.detail}</label>
	                        </div>
	                       </c:forEach>
	                   </div>
	                   <div class="col-xs-6"></div>
	               </div>
                </c:forEach>
                <div id="btndiv">
                    <button class="btn btn-default">提交</button><br>
                </div>
                <br><br>
            </form>
        </div>
    	<div class="panel-footer"></div>    
</div>
</body>
</html>