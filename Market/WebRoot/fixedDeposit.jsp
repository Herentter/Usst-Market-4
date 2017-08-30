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

        }
        .panel{
            margin: 0px;
        }
        .panel-body{
            background: url(images/pexels-photo.jpg) 200px;
            background-size: cover;
        }
        .table{
            width: 500px;
            height: 300px;
            background:white;
        }
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">定期存款</div>
        <div class="panel-body">
            <form class="form-horizontal">
                <table class="table table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th>件/天</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>上季度的三个月定期存款总额</td>
                        <td>0</td>
                    </tr>
                     <tr>
                        <td>你需要从该定期存款中提取多少资金？</td>
                        <td><input class="form-control" type="text" name=""></td>
                    </tr>
                     <tr>
                        <td>你需要向该定期存款中存入多少资金？</td>
                        <td><input class="form-control" type="text" name=""></td>
                    </tr>
                     <tr>
                        <td>当前季度的三个月定期存款额</td>
                        <td>0</td>
                    </tr>
                     <tr>
                        <td>季度利率</td>
                        <td>1.5</td>
                    </tr>
                     <tr>
                        <td>预计利息收入</td>
                        <td>1,625</td>
                    </tr>
                    <tr>
                        <td colspan="5"><button class="btn btn-info">提交</button></td>
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