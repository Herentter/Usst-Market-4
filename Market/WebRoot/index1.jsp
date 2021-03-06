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
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  	<link rel="stylesheet" type="text/css" href="css/top.css">
    <style type="text/css">
        /* html{
            height: 100%;
        }
        body{
            padding:0px;
            margin:0px;
            /* height: 600px; */
            font-family: "Microsoft YaHei"
        } */
        a{color: white;}
        .nav {width: 190px; padding: 40px 28px 25px 0;height:100%;background: 
            #1e485d;color: white;box-sizing: border-box;--moz-box-sizing: border-box;}  
        ul.nav {padding: 0; margin: 0; font-size: 1em; line-height: 0.5em; list-style: none;}  
        ul.nav li {margin-top: 10px;}  

        ul.nav li a {line-height: 10px; font-size: 16px; padding: 10px 5px; color: #ddd;text-indent: 15px; display: block; 
        text-decoration: none;} 
        ul.nav>li:nth-of-type(1){margin-top:0px;}
        ul.nav li a:hover {background-color:#675C7C;    color:white;} 
        ul.nav ul { margin: 0; padding: 0;display: none;background: #333;}  
        ul.nav ul li { margin: 0; padding: 0; clear: both;}  
        ul.nav ul li a { padding-left: 20px; font-size: 14px; font-weight: normal;} 
        ul.nav ul li a:hover {background-color:#D3C99C; color:#675C7C;}

        ul.nav ul ul li a {color:silver; padding-left: 40px;}  
        ul.nav ul ul li a:hover { background-color:#D3CEB8; color:#675C7C;}  
        ul.nav span{float:right;} 
        
        /*  #menu{
        	width:100%;
            text-align: right;
            border:1px solid #444; 
            background: #f6f6f6;
            margin-right:-15px;
            padding-top: 2px;

        } */
        
        #menu{
        	/* width:600px; */
        	position:absolute;
        	left:1070px;
        	top:85px;

        }
        #menu a{  
            /*border:1px solid red;*/
            margin-right:45px;
            margin-bottom: 5px;
            margin-top:5px;
            color:#666;
            cursor:pointer;
            font-size:20px;
        }
        #menu a:last-of-type{
        	                                                                                 
        	margin-right:15px;
        }
        #menu a:hover{
            text-decoration: none;
        }
        #left{
	        /* border:2px solid red; */
			width:200px;
	        height:560px;
	        float:left;
	        background:#1e485d;
	        padding-top:10px;
	        padding-bottom:20px;
        }
        #right{
        	/* border:2px solid red; */
        	float:left;
        }
        .subnav:actived{
        	background:red;
        }
		#select{
			width:80%;
			margin-left:10%;
			padding-left:20%;
			margin-bottom:10px;
			
			[]
			border:0px;
		}
    </style>
</head>
<body>
    <div id="head">
        <div id="head-left">
            <img src="images/logo.png">
            <span id="head-title">USST Market</span>
        </div>
        <div id="head-right">
            <a href=""><span><i class="fa fa-user-circle"></i></span>
            <span id="head-right-text"></span></a>
            <div id="user-detail">
                <h3>账户详情</h3>
                <p>用户名：${member.name}</p>
                <p>邮箱：${member.email}</p>
                <p>公司id：${member.companyId}</p>
                <p>其他信息一</p>
                <p>其他信息二</p>
            </div>
        </div>
    </div>
    <input type="hidden" id="current_quarter" value="${quarter }">
    <div id="left">
    	
    	<select id="select">
    		<optgroup label="">
    			<option id="btn1">第1季度</option>
    			<option id="btn2">第2季度</option>
    			<option id="btn3">第3季度</option>
    			<option id="btn4">第4季度</option>
    			<option id="btn5">第5季度</option>
    			<option id="btn6">第6季度</option>
    		</optgroup>
    	</select>
    		
    	<div id="leftcontent">
    		<iframe src="left1.jsp?companyId=${member.companyId}&currentQuarter=${competition.currentQuarter}
    		" frameborder=0 height=600 scrolling="no" width=200 marginheight=0 marginwidth=0 seamless="seamless"></iframe>
    	</div>
    	
    	<div id="leftcontent2">
    		<iframe src="left2.jsp?companyId=${member.companyId}&currentQuarter=${competition.currentQuarter}
    		" frameborder=0 height=600 scrolling="no" width=200 marginheight=0 marginwidth=0 seamless="seamless"></iframe>
    	</div>
    	
    	<div id="leftcontent3">
    		<iframe src="left3.jsp?companyId=${member.companyId}&currentQuarter=${competition.currentQuarter}
    		" frameborder=0 height=600 scrolling="no" width=200 marginheight=0 marginwidth=0 seamless="seamless"></iframe>
    	</div>
    	
    	<div id="leftcontent4">
    		<iframe src="left4.jsp?companyId=${member.companyId}&currentQuarter=${competition.currentQuarter}
    		" frameborder=0 height=600 scrolling="no" width=200 marginheight=0 marginwidth=0 seamless="seamless"></iframe>
    	</div>
    	
    </div>

    <div id="right">
    	<div id="menu">
	       <a
	        data-toggle="tooltip" data-placement="left" data-original-title="设置" title="">
	            <span><i class="fa fa-cog fa-x"></i></span>
	        </a>
	        <a
	        data-toggle="tooltip" data-placement="left" data-original-title="帮助" title="">
	            <span><i class="fa fa-question fa-x"></i></span>
	        </a>
	        <a href="login.jsp"
	        data-toggle="tooltip" data-placement="left" data-original-title="退出" title="">
	            <span><i class="fa fa-sign-out "></i></span>
	        </a>
		</div>
    	<iframe id="main" name="main" width=1060 height=530 marginheight="10" scrolling="no"
    	src="welcome.jsp" frameBorder=0 onLoad="iFrameHeight()"></iframe>
	</div>    

<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/accordion.js"></script>
<script type="text/javascript">
		var jwindow=$(window);
		jwindow.scroll(function(){
			var scrollHeight=jwindow.scrollTop();
			var screenHeight=jwindow.height();
			var screenWidth=jwindow.width();
			if(scrollHeight>80){
				$("#leftcontent").css({
					"color":"#00f",
					"position":"fixed",
					"top":"0px"
				});	
				$("#leftcontent2").css({
					"color":"#00f",
					"position":"fixed",
					"top":"0px"
				});	
				$("#leftcontent3").css({
					"color":"#00f",
					"position":"fixed",
					"top":"0px"
				});	
				$("#leftcontent4").css({
					"color":"#00f",
					"position":"fixed",
					"top":"0px"
				});	
				
			}else{
				$("#leftcontent").css({
					"color":"#000",
					"position":"static"
				});	
				$("#leftcontent2").css({
					"color":"#000",
					"position":"static"
				});
				$("#leftcontent3").css({
					"color":"#000",
					"position":"static"
				});
				$("#leftcontent4").css({
					"color":"#000",
					"position":"static"
				});
			}
		});
</script>
<script type="text/javascript">
	function iFrameHeight() {   
		var ifm= document.getElementById("main");   
		var subWeb = document.frames ? document.frames["main"].document : ifm.contentDocument;   
		if(ifm != null && subWeb != null) {
		   ifm.height = subWeb.body.scrollHeight+10;
/* 		   ifm.width = subWeb.body.scrollWidth; */
		}   
	}   
	$(function(){ 
	   $(".nav").accordion({ 
	        speed: 500, 
	        closedSign: '+', 
	        openedSign: '-' 
	    }); 
	   $(".nav").hover(function(){
	    $(this).css("overflow","auto")
		},function(){
		    $(this).css("overflow","hidden")
		})
	});
	$(function(){
        $('[data-toggle="tooltip"]').tooltip();
    });
	
	$(function(){
		/* 判断要显示的导航栏 */
		var currentQuarter=$("#current_quarter").val();
		if(currentQuarter==1){
			
			$("#leftcontent2").css({
				"display":"none"
			});
			$("#leftcontent3").css({
				"display":"none"
			});
			$("#leftcontent4").css({
				"display":"none"
			});
			
			/* 确定要显示哪个季度*/
			
			$("#btn1").attr("selected",true);
			
		}
		if(currentQuarter==2){
			$("#leftcontent").css({
				"display":"none"
			});
			$("#leftcontent3").css({
				"display":"none"
			});
			$("#leftcontent4").css({
				"display":"none"
			});
			$("#btn2").attr("selected",true);
		}
		if(currentQuarter==3){
			$("#leftcontent").css({
				"display":"none"
			});
			$("#leftcontent2").css({
				"display":"none"
			});
			$("#leftcontent4").css({
				"display":"none"
			});
			$("#btn3").attr("selected",true);
		}
		if(currentQuarter==4){
			$("#leftcontent").css({
				"display":"none"
			});
			$("#leftcontent2").css({
				"display":"none"
			});
			$("#leftcontent3").css({
				"display":"none"
			});
			$("#btn4").attr("selected",true);
		}
		$("#btn1").click(function(){
			$("#leftcontent").css({
				"display":"block"
			});
			$("#leftcontent2").css({
				"display":"none"
			});
			$("#leftcontent3").css({
				"display":"none"
			});
			$("#leftcontent4").css({
				"display":"none"
			});
		});
		
		$("#btn2").click(function(){
			$("#leftcontent").css({
				"display":"none"
			});
			$("#leftcontent2").css({
				"display":"block"
			});
			$("#leftcontent3").css({
				"display":"none"
			});
			$("#leftcontent4").css({
				"display":"none"
			});
		});
		
		$("#btn3").click(function(){
			$("#leftcontent").css({
				"display":"none"
			});
			$("#leftcontent2").css({
				"display":"none"
			});
			$("#leftcontent3").css({
				"display":"block"
			});
			$("#leftcontent4").css({
				"display":"none"
			});
		});
		
		$("#btn4").click(function(){
			$("#leftcontent").css({
				"display":"none"
			});
			$("#leftcontent2").css({
				"display":"none"
			});
			$("#leftcontent3").css({
				"display":"none"
			});
			$("#leftcontent4").css({
				"display":"block"
			});
		});
		
	});
</script>

</body>
</html>