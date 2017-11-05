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
            margin:5px;
            width: 99%;
        }
        .panel{
            margin: 0px;
        }

        #content{
            /*width: 900px;*/
            height: 500px;
            background: url(images/bgmiphone2.jpg) no-repeat;
            background-position: 0px -120px;
            background-size: cover;
            opacity:0.9;
        }
        .panel-body{
            padding: 0px;
        }
    </style>
</head>
<body>
   
    <div class="panel panel-info">
        <div class="panel-heading"><label>欢迎界面</label></div>
        <div class="panel-body">
             <div id="content">
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>

</body>
</html>