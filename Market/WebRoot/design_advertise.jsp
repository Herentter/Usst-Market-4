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
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<style>
	body{
            width: 99%;
            margin:5px;
        }
        
        #table1 {
	width: 700px;
	background: white;
}
	 #table1 .td1{
		text-align:center;
		vertical-align:middle;
	}

	#select1{
		width:70%;
	}
	#notice1{
        	min-height:420px;
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
        .chanpin{
        font-weight:bold;
        font-size:large;
        padding-left:10px;
    }
    	#text1{
    		width:70%;
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
	#btndiv{
	float:left;
	margin-left:640px;
}
</style>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>

	$(function(){
		
		//选中checkbox
		var value=$("#advertiseId").val();
		var id=value.split(",");
		for(var i=0;i<id.length;i++){
			var check=id[i];
			$(":input[id="+check+"]").attr("checked",'checked');
		}
	})
</script>
</head>
<body>
   
        <div class="panel panel-info">
            <div class="panel-heading">
                <span>设计广告</span>
            </div>
            <div class="panel-body">
            
            	<ul class="nav nav-tabs">
	                <li><a href="#notice1" data-toggle="tab"> 课程介绍</a></li>
	                <li class="active"><a href="#notice2" data-toggle="tab">决策界面</a></li>
	            </ul>
	            <div class="tab-content">
	                <div class="tab-pane fade" id="notice1">
	                	<div class="course_content">
							<div class="text1">
								您公司的文化会在最初的几个会议中形成。 除了分配副总裁角色及职责之外，您还需要决定如何经营企业及进行团队互动：
							</div>
							<ul class="text1_ul">
								<li>您是否要求会议准时开始？</li>
								<li>会议是否有议程？</li>
								<li>每位队员是否都有机会发言，并且为他人提出建议？</li>
								<li>团队该如何进行协作？</li>
								<li>团队如何完成所有任务？</li>
								<li>团队如何避免争执，或者，至少如何管理争执？</li>
							</ul>
							<div class="text1">
								在相应的决策界面，您会看到一系列现实中管理人员会采取的商业团队规则。 这些及其它相关问题值得认真讨论，并需要团队达成一致。 这将极大地影响公司的成功和团队合作。
							</div>
	                   	</div>
	                   	<div class="left">
	                   		<div class="left_title">
	                   			<span><i class="fa fa-tasks"></i></span><label>你的任务</label>
	                   		</div>
	                   		<div class="left_content">
	                			在决策界面选择您认为重要的团队规则，或者添加列表之外的其它规则。 您可以选择任意数量的团队规则。
	                   		</div>
	                   	</div>
	                   	<div class="right">
	                   		<div class="right_title">
	                   			<span><i class="fa fa-lightbulb-o"></i></span><label>决策小提示</label>
	                   		</div>
	                   		<div class="right_content">
	                   			团队总体领导，或者公司总裁的任务之一，就是确保这些规则的实施，或者根据需要调整团队规则。 就像许多高效率的机构一样，如果有必要，您可以将这些规则打印出来，挂在会议显眼的地方。
	                   		</div>
	                   	</div>
	                </div>
	                <div class="tab-pane fade in active " id="notice2">
                	<label class="chanpin">设计广告</label>
                	<input type="hidden" id="quarter" value="${quarter }"/>
                	<table class="table table-bordered" id="table1">
						<tbody>
						<form id="form1" action="" method="post">
							<tr >
								<td  class="td1">选择产品：</td>
								<td>
									<select id="select1" onchange="aa()">
										<option value="0">请选择产品</option>
										<c:forEach items="${companyProducts }" var="cp">
											<option value="${cp.id }" <c:if test="${productId==cp.id}">  selected="true" </c:if>>${cp.name }</option>
										</c:forEach>
		                            </select>
								</td>
							</tr>
							<tr >
								<td  class="td1">广告名称：</td>
								<td>
									<input type="text" id="text1" name="advertiseName" value="${companyAdvertises[0].getAdvertiseName() }"/>
								</td>
							</tr>
							<tr >
								 <input type="hidden" name="advertiseId" id="advertiseId" value="${companyAdvertises[0].getAdvertiseId() }"/>
								<td class="td1">选择广告语(多选)：</td>
								<td>
								<c:forEach items="${advertiseInfos }" var="ad">
									<input id="${ad.id }" type="checkbox"/>${ad.detail }<br/>
								</c:forEach>
									
								</td>
							</tr>
						
						</form>
						</tbody>
					</table>
					<div id="btndiv">
                      	<button type="button" class="btn btn-default" id="btn1">提交</button><br>
                  	</div>
	                </div>
	            </div>
            </div>
        <div class="panel-footer"></div>    
    </div>
</body>
<script>
	var quarter=$("#quarter").val();
	$("#btn1").click(function(){
		var productId=$("#select1").val();
		var productName=$("#select1").find("option:selected").text();
		$("#productName").attr("value",productName);
		var advertiseName=$("#text1").val();
		var checked=$("input:checked");//选中的项
		if(productName=="请选择产品"){
			alert("请选择产品");
			return;
		}
		if(advertiseName==""){
			alert("请设计广告名称！");
			return;
		}
		if(checked.length==0){
			alert("请选择广告语!");
			return;
		}
		var checkedString="";
		for(var i=0;i<checked.length;i++){
			if(i!=checked.length-1){
				checkedString+=checked[i].id+",";
			}else{
				checkedString+=checked[i].id;
			}	
		}
		alert("提交成功");
		$("#form1").attr(
				"action",
				"UpdateCompanyAdvertise.do?quarter="+quarter+"&checkedString=" + checkedString
						+"&productId=" +productId );
		$("#form1").submit();
	})
	function aa(){
		var productId=$("#select1").val();
		var productName=$("#select1").find("option:selected").text();
		var method="query";
		$("#form1").attr(
				"action",
				"UpdateCompanyAdvertise.do?quarter="+quarter+"&method=" + method
						+"&productId=" +productId );
		$("#form1").submit();
		
	}
</script>
<script type="text/javascript" src="js/classIntroduction.js"></script>
</html>