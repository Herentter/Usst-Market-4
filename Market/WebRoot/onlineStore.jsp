<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>  
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/physicalStore.css">
<style type="text/css">
	
    .panel-body{
    		height:680px;
    	}
    	
     #notice2{
    	margin-top:30px;
    	
    }
        
        .course_content{
        	border:1px solid #0ff;
        	margin-top:10px;
        	padding:20px;
        	min-height:220px;
        	font-size:14px;
        	letter-spacing:1px;
        }
        .left{
        	/* border:1px solid blue; */
        	width:450px;
        	padding:20px;
        	float:left;
        	background:#eee;
        	margin:10px 0 0 2px;
        	min-height:220px;
        }
        .left_title span i{
        	color:#009;
        	font-size:18px;
        	margin-right:6px;
        }
        
        
        .right{
        	/* border:1px solid blue; */
        	width:500px;
        	padding:20px;
        	float:left;
        	background:#abcdef;
        	margin:10px 0 0 20px;
        	min-height:120px;
        }
        
        .right_title span i{
        	color:red;
        	font-size:22px;
        	margin-right:6px;
        }
        .text0{
        	margin-left:30px;
        	margin-top:10px;
        }
        .text1{
		text-indent:30px;
		margin-top:10px;
	}
	.text1_ul{
		margin-left:40px;
		margin-top:10px;
	}
	.text2{
        	margin-left:30px;
        	margin-top:25px;
        }
	.left_content li{
		margin-top:5px;
	}
	.tab-content{
		margin-top:10px;
	}
    
</style>
  <script type="text/javascript">
function init(){
	//用隐藏域记录选中项id
	var market=$("#myHidden").val();
	//转换成字符串
	var maeketArr= goal.split(",");
	
	//进行check
	var id="";
	for(var i=0;i<marketArr.length-1;i++){
		id=marketArr[i];
		var obj=$(":input[type=checkbox]");
		for(var j=0;j<obj.length;j++){
			if(obj[j].value==id){
				obj[j].checked="true";
			}
		}   
	}  
}
</script>
</head>
<body onLoad="init()">
    <div class="panel panel-info">
        <div class="panel-heading">网络销售中心</div>
        <div class="panel-body">
        	<ul class="nav nav-tabs">
                <li><a href="#notice1" data-toggle="tab"> 课程介绍</a></li>
                <li class="active"><a href="#notice2" data-toggle="tab">决策界面</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade " id="notice1">
                	<div class="course_content">
						<div class="text1">
							对许多公司来说，网络销售中心是种高效的销售渠道。 它使得下单购买对潜在消费者来说更加简便。
						</div>
						<div class="text1">
							开设网络销售中心需要耗费一个季度的时间。 因此，您可能需要在第一季度就计划开设网络销售中心。
						</div>
                   	</div>
                   	<div class="left">
                   		<div class="left_title">
                   			<span><i class="fa fa-tasks"></i></span><label>你的任务</label>
                   		</div>
                   		<div class="left_content">
                   			请选择您计划在第二季度，也就是市场测试阶段，开设的新实体销售中心。 请注意其开设成本（您将在本季度支付）和季度租金（您将在之后的每个季度支付）。
                   		</div>
                   	</div>
                   	<div class="right">
                   		<div class="right_title">
                   			<span><i class="fa fa-lightbulb-o"></i></span><label>决策小提示</label>
                   		</div>
                   		<div class="right_content">
                   			需要谨慎的是，您可能希望同时通过网络和实体销售中心来销售产品。 但是，同时开设两种销售渠道可能会造成财务困难。 之外，实体销售中心可能会抢夺网络销售中心的潜在客户，反之亦然。 也就是说，本打算从网络销售中心购买的消费者有可能会转向实体销售中心。 这将会降低销售人员的工作效率。
                   			
                   		</div>
                   	</div>
                </div>
                <div class="tab-pane fade in active" id="notice2">
                	<input type="hidden" value="${quarter }">
                	<table class="table table-bordered">
		                <thead>
		                    <tr>
		                    	<th>市场区域</th>
		                       	<th colspan="3" style="padding-left:400px;">市场需求量</th>
		                        
		                    </tr>
		                </thead>
		               <tbody id="data_body">
		               <tr>
		                        <th></th>
		                        <th>实用型</th>
		                        <th>极致型</th>
		                        <th>商务型</th>
		                        
		                    </tr>
		                   <c:forEach items="${marketInfoList }" var="item">
			                	<tr>	
			                		<td>${item.key.city}</td>
			                		<td>${item.key.webPractical }</td>
			                		<td>${item.key.webPerfect }</td>
			                		<td>${item.key.webBusiness }</td>
			                	</tr>
			                </c:forEach>    
		               </tbody>
		            </table>
		         <form id="form1"  role="form" method="post" action="insertmarketwebinfo.do?quarter=${quarter }" >
		            <div id="region">
		                <c:forEach items="${marketInfoList}" var="item">
		              			<div id="china" class="branch">
		                        <figure class="test1">
		                            <div>
		                              <c:if test="${item.value==1}"> <input type="checkbox" class="chk_1" name="market_id" checked="checked" value="${item.key.id }"/></c:if>
		                            <c:if test="${item.value==0}">   <input type="checkbox" class="chk_1" name="market_id"  value="${item.key.id }"/> </c:if> 
		                              <label for="checkbox_d1"></label>
		                            </div>
		                             <img src="${item.key.img }">
		                            <figcaption>
		                                <h3>${item.key.city }</h3>
		                                <p>实用型：${item.key.webPractical }</p>
		                                <p>极致型：${item.key.webPerfect }</p>
		                                <p>商务型：${item.key.webBusiness }</p> 
		                                <br><br>
		                                <p>开设成本：${item.key.webOpen }元</p>
		                                <p>租赁成本：${item.key.webRent }元</p>
		                            </figcaption>
		                        </figure>
		                    </div>
		    				</c:forEach>
		             
		                <div class="split"></div>
		                <br>
		                	<button type="button" class="btn btn-primary" onclick="sign()" style="float:right;margin-right:15px;">提交</button>
		           		 </div>
		             </form>
                </div>
         	</div>
        
         
        </div>
        <div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>   
<script type="text/javascript">
$(function(){
	
	$(".test1").children("figcaption").children('p').css({
	     'transform': 'translate(0px,0px)'
	 });
});

//提交时进行判断
function sign() {
	var obj=$(":input[type=checkbox]");
	var flag=false;
	for(var i=0;i<obj.length;i++){
		if(obj[i].checked){
			flag=true;
		}
	}
	
	if(flag==false){
		alert("请选择选项！");
		return;
	}
	alert("提交成功");
	document.getElementById("form1").submit();	
    
}

</script>
</body>
</html>