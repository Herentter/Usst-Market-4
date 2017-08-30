<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        body {
            width: 99%;
            margin: 4px;
        }
        
        .products{
        	/* border:1px solid red; */
        	height:170px;
        	width:200px;
        	float:left;
        	border-radius:5px;
        	margin:7px;
        	padding:5px;
        	background:#eee;
        }
        #productContent{
			width:660px;
			float:left;
		}
		.product_detail{
			width:140px;
			font-weight:normal;
			
			
		}
		.product_price{
			
		}
		#decisionTitle{
			margin-bottom:10px;
			margin-left:-30px;
		}
		.radio_type{
			margin-top:6px;
		}
		.label_type{
			
			font-weight:normal;
		}
		.total_cost_div{
			margin-top:10px;
			font-weight:bold;
		}
		#box_4{
			width:300px;
			height:400px;
			float:left;
	      
    	}
    	#box_4 img{
    		width:100%;
    		height:100%;
    	}
    	.btn{
	        width:90px;
	        height:31px;
	        margin-left:6px;
	        background-color:#0fad84;
	        color:white;  
	        border-radius:2px;
	        float:right;
	        
	    }
	    .btn:hover {
	        color: #fff;
	        background-color:#0b5da4;
	        border-color: #204d74;
	        }
	    .btn:active {
	        color: #fff;
	        background-color:#04126a;
	        border-color: #204d74;
        }
        #decisionFoot{
        	float:left;
        	margin-top:160px;
        	margin-left:px;
        }
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">设计品牌</div>
        <div class="panel-body">
        	<form class="form-horizontal">
		        <div id="decisionTitle" class="row">
		        	<div class="col-md-4">
		        		<div class="form-group">
					    	<label for="text" class="col-md-4 control-label">产品名称:</label>
					    	<div class="col-md-8">
					    		<input type="text" class="form-control" placeholder="">
					    	</div>
					    </div>
		        	</div>
		        	<div class="col-md-5">
		        		<div class="form-group">
		        			<label for="text" class="col-md-3 control-label">产品类型：</label>
		        			<div class="radio_type">
			        			<div class="col-md-3">
			        				<label class="label_type">
			        					<input type="radio" name="product_type">&nbsp;经济型
			        				</label>
			        			</div>
			        			<div class="col-md-3">
			        				<label class="label_type">
			        				<input type="radio" name="product_type">&nbsp;极致型
			        				</label>
			        			</div>
			        			<div class="col-md-3">
			        				<label class="label_type">
			        				<input type="radio" name="product_type">&nbsp;商务型
			        				</label>
			        			</div>
		        			</div>
			        	</div>
		        	</div>
		        	<div class="col-md-2 total_cost_div">
		        		<span id="span_title">组成成本：</span>
		        		<span id="span_number">300</span>
		        		
		        	</div>
		        	
		            <!-- <div id="title_left">
		                <label class="label_name">品牌名称:</label>
		                <input type="text" id="Brand_name" />
		            </div>
		            <div id="title_middle">
		
		                <label class="label_name">品牌类型:</label>
		
		                <span class="radio1">
		                    <input type="radio" name="type" id="jingji" checked="checked"/>
		                    <img src="images/economy.png" class="pic_type" />
		                    <label>经济型</label>
		                </span>
		                <span class="radio1">
		                    <input type="radio" name="type" id="shangwu" />
		                    <img src="images/commerce.png" class="pic_type" />
		                    <label>商务型</label>
		                </span>
		                <span class="radio1">
		                    <input type="radio" name="type" id="jizhi" />
		                    <img src="images/extreme.png" class="pic_type" />
		                    <label>极致型</label>
		                </span>
		
		            </div>
		            <div id="title_right">
		                <label class="label_name">组成成本:300</label>
		            </div> -->
		        </div>
	      
	      		<div id="productContent">
		           	<c:forEach items="${result }" var="entry">
		            	<div class="products">
		                 <label>${entry.key}</label>
		                 <div class="">
		             		<c:forEach items="${entry.value}" var="item">
		             			<div>
		                  			<label class="product_detail">
			                       		<input type="radio" name="${item.title }" value="${item.id }" >
			                        	${item.detail}
			                        </label>
			                        <label class="product_price">${item.price }</label>
		                      </div>
		            		</c:forEach>
		                 </div> 
		           		</div>
		            </c:forEach>
	            </div>
	
	            <div id="box_4">
	               <img src="images/design_iphone.jpg" class="phone" />
	            </div>
	       
		       	<div id="decisionFoot">
		            <input type="button" name="cancel" class="btn" value="取消" style="margin-right:100px" onclick="window.open('design.html', '_self'); " />
		            <input type="button" name="baocun" class="btn" value="保存" style="margin-right:20px" onclick="window.open('design.html', '_self'); "/>
	       		</div>
    		</form> 
    	</div>    
		<div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>