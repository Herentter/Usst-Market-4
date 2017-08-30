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
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <style type="text/css">
        body{
            width: 99%;
            margin:4px;
            height: 90%;

        }
        .panel{
            margin: 0px;
        }
        .panel-body{
            background: url(images/pexels-photo.jpg) 200px;
            background-size: cover;
            height: 420px;
        }
        .table{
            width: 500px;
            /*height: 300px;*/
            background:white;
        }
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">内部持股</div>
        <div class="panel-body">
            <form class="form-horizontal">
                <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>股票类型</th>
                        <th>所有者姓名</th>
                        <th>股数</th>
                        <th>每股价格</th>
                        <th>价值总计</th>
                        <th>季度</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>普通股</td>
                        <td>经营团队</td>
                        <td>20,000</td>
                        <td>100</td>
                        <td>2,000,000</td>
                        <td>1</td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td colspan="6"><button class="btn btn-info">提交</button></td>
                    </tr>
                </tbody>
                </table>
            </form>
        </div>
        <div class="panel-footer"></div>
    </div>
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
</html>