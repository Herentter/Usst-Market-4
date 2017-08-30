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
    <style type="text/css">
        body{
            width: 99%;
            margin:4px;
        }
        .panel{
            margin: 0px;
        }
        .panel-body{
            /*background:#2c343c;*/
        }
        .table{
            /*color:#999;*/
            margin-top:20px;
        }
        .panel-heading{
            /*font-weight: bold;
            letter-spacing: 2px;*/
        }
        .split{
            clear: left;
        }

        #header{

        }
        .item{
            margin-top: 40px;
        }
        .form-horizontal ul{
            list-style: none;
            padding: 0px;
            margin:0px;
        }
        .form-horizontal div:nth-child(4){
            /*border:2px solid red;*/
            margin-top:20px;
        }
        .item-header{
            font-size: 18px;
            /*border-bottom: 1px solid black;*/
            margin-top: 0px;
        }
        .item:nth-of-type{
            border:2px solid red;
        }
        .item img{
            width: 80px;
        }
        ul li{
            float:left;
            width: 20%;
            margin-left:40px;
        }
        ul li:nth-of-type(1){
            width:15%;
        }
        ul li:nth-of-type(2){
            width:15%;
        }

        select{
            width: 60%;
        }
        #hr{
            border:1px solid #ccc;
            height: 1px;
            width:84%;
            margin-top:10px;
            margin-left: 30px;
        }
        
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">职位分配</div>
        <div class="panel-body">
        	
            <form class="form-horizontal">
                <div class="item item-header">
                    <ul>
                        <li>管理者姓名</li>
                        <li>照片</li>
                        <li>主要职位</li>
                        <li>次要职位</li>
                    </ul>
                </div>
                <div class="split"></div>
                <div id="hr"></div>
                
                
                <c:forEach items="${memberList}" var="item">
                	<input type="hidden" value="${item.id}">
	                <div class="item">
	                    <ul>
	                        <li><label>${item.name}</label></li>
	                        <li><img src="images/bgm1.jpg"></li>
	                        <li>
	                        	<select class="selectPicker form-control showtick">
	                        		<c:forEach items="${dutyList}" var="duty">
						            	<option>${duty.position}</option>
						            </c:forEach>
	                            </select>
	                        </li>
	                        <li><select class="selectPicker form-control showtick">
	                                <c:forEach items="${dutyList}" var="duty">
						            	<option>${duty.position}</option>
						            </c:forEach>
	                            </select>
	                        </li>
	                    </ul>
	                </div>
	                <div class="split"></div>
                </c:forEach>
               
                
               
               
                <!-- <div class="item">
                    <ul>
                        <li>Steven_Zhou</li>
                        <li><img src="images/bgm1.jpg"></li>
                        <li><select class="selectPicker form-control showtick">
                                <option>总裁</option>
                                <option>总经理</option>
                                <option>销售部长</option>
                                <option>宣传部长</option>
                                <option>执行总裁</option>
                            </select>
                        </li>
                        <li><select class="selectPicker form-control showtick">
                                <option>总裁</option>
                                <option>总经理</option>
                                <option>销售部长</option>
                                <option>宣传部长</option>
                                <option>执行总裁</option>
                            </select>
                        </li>
                    </ul>
                </div>
                <div class="split"></div> -->
            </form>
        </div>
        <div class="panel-footer"></div>
    </div>
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
</html>