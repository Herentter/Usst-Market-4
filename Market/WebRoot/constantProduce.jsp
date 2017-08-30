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
        .panel-body{
            background: url(images/pexels-photo.jpg) 200px;
            background-size: cover;
        }
        .panel{
            margin: 0px;
        }
        .table{
            width: 400px;
            height: 300px;
            background:white;
        }
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">固定产能</div>
        <div class="panel-body">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th>件/天</th>
                        <th>件/季度</th>
                        <th>资本性投资</th>
                        <th>单位资本性成本</th>
                    </tr>
                </thead>
                    <tbody>
                    	<c:forEach items="${capacityInfoList}" var="item">
                    		
                			<tr>
                            <td><input type="radio" name="group"></td>
                            <td>${item.number }</td>
                            <td>${item.totalNumber }</td>
                            <td>${item.invest }</td>
                            <td>${item.totalInvest }</td>
                        </tr>
                		</c:forEach>
                        
                        <!--  <tr>
                            <td><input type="radio" name="group"></td>
                            <td>50</td>
                            <td>1,625</td>
                            <td>6000,000</td>
                            <td>24.000</td>
                        </tr>
                         <tr>
                            <td><input type="radio" name="group"></td>
                            <td>150</td>
                            <td>1,625</td>
                            <td>6000,000</td>
                            <td>24.000</td>
                        </tr>
                         <tr>
                            <td><input type="radio" name="group"></td>
                            <td>200</td>
                            <td>1,625</td>
                            <td>6000,000</td>
                            <td>24.000</td>
                        </tr>
                         <tr>
                            <td><input type="radio" name="group"></td>
                            <td>300</td>
                            <td>1,625</td>
                            <td>6000,000</td>
                            <td>24.000</td>
                        </tr>
                         <tr>
                            <td><input type="radio" name="group"></td>
                            <td>400</td>
                            <td>1,625</td>
                            <td>6000,000</td>
                            <td>24.000</td>
                        </tr>
                         <tr>
                            <td><input type="radio" name="group"></td>
                            <td>450</td>
                            <td>1,625</td>
                            <td>6000,000</td>
                            <td>24.000</td>
                        </tr> -->
                        <tr>
                            <td colspan="5"><button class="btn btn-info">提交</button></td>
                        </tr>
                    </tbody>
            </table>
        </div>
        <div class="panel-footer"></div>
    </div>
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
</html>