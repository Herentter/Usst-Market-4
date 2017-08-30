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
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript">
	$(function(){
			//用隐藏域记录信息
			var info=$("#myHidden1").val();
			var name=$("#myHidden2").val(); 
			var former_name=$("#myHidden3").val();
			var obj=document.getElementById("company_name");
			
			if(info==""){
				//第一次进入页面
				obj.value=former_name;
			}
			//点击提交后进入页面
			else if(info=="公司名称必须在4到12个字符！"){
				alert(info);
				obj.value=former_name;
				
			} 
			else {
				alert(info);
				obj.value=name;
			}
			
			
	})
	
</script>

    <style type="text/css">
        body{
            width: 99%;
            margin:4px;
        }
        .panel{
            margin: 0px;
        }
        .panel-body{
            /*border:2px solid red;*/
            padding: 0px;

        }
        #content{
            background: url(images/office.jpg) ;
            background-size: cover;
            opacity:0.9;
            height: 500px;
            width: 100%;
            position: relative;
        }
        #content #office{
            /*border:2px solid red;*/
            width: 600px;
            position: absolute;
            top:130px;
            left:80px;
        }
        #content #office label{
            color: rgba(220,220,220,.8);
            font-size: 15px;
        }
        #content #changeName{
            margin-left: -40px;
        }
        #content form{
            
        }
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">创建公司</div>
        <div class="panel-body">
        	
            <div id="content">
                <div id="office">
                    <form class="form-horizontal" action="UpdateCompanyName.do" method="post" role="form">
                        <div class="form-group">
                            <label for="text" class="col-xs-2 control-label">公司名称：</label>
                            <div class="col-xs-5">
                                <input type="text" class="form-control" id="company_name" name="name" placeholder="Enter Name" >
                            </div>
                            <div id="submitName" class="col-xs-2"><button class="btn btn-primary">提交</button></div>
                           <input id="myHidden1" type="hidden" name="myHidden" value="${info }"/>
                           <input id="myHidden2" type="hidden" name="myHidden" value="${name }"/>
                           <input id="myHidden3" type="hidden" name="myHidden" value="${former_name }"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
   

</body>
</html>