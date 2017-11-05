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
<title>Insert title here111</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

    <style type="text/css">
        body {
            width: 99%;
            margin: 5px;
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
			height:500px;
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
    <script type="text/javascript">
    	function init(){
    		//手机配置，并打钩
    		var ss=document.getElementsByName("ss");
    		if(ss.length!=0){
    			var productCost=0;
    			for(var i=0;i<ss.length;i++){
        			document.getElementById(ss[i].value+"ss").checked=true;
        			
        			//计算成本
        			var label=document.getElementById(ss[i].value);
        			productCost=parseInt(productCost)+parseInt(label.innerText);
        			document.getElementById("cost").innerText=productCost;
        			document.getElementById("productCost").value=productCost; 
        		} 
    		}
    		
    		
    		
    	}
    
    
    </script>
</head>
<body onLoad="init()">
    <div class="panel panel-info">
        <div class="panel-heading">设计品牌</div>
        <div class="panel-body">
        	<form  id="form1" class="form-horizontal" role="form" method="post" action="UpdateCompanyProduct.do">
		        <div id="decisionTitle" class="row">
		        	<div class="col-md-4">
		        		<div class="form-group">
					    	<label for="text" class="col-md-4 control-label">产品名称:</label>
					    	<div class="col-md-8">
					    		<input type="text" id="Brand_name" name="Brand_name" class="form-control" placeholder="请输入产品名称" value="${brandName }">
					    	</div><br><br>
							<label for="text" class="col-md-4 control-label">产品类型:</label>
							<div class="col-md-8">
								<select class="form-control" name="brandType" value="${companyProduct.type}">
									<option value="0">-请选择-</option>
									<option value="1" <c:if test="${'1' eq companyProduct.type}">selected</c:if>>极致型</option>
									<option value="2" <c:if test="${'2' eq companyProduct.type}">selected</c:if>>商务型</option>
									<option value="3" <c:if test="${'3' eq companyProduct.type}">selected</c:if>>实用型</option>
								</select>
							</div>
					    </div>
		        	</div>
		        	<div class="col-md-5">
		        		<div class="form-group"></div>
		        		<input id="flag"  type="hidden" name="flag" value="insert"/>
		        		<input id="productId"  type="hidden" name="productId" value="${productId }"/>
		        	</div>
		        	<div class="col-md-2 total_cost_div">
		        		<label>组成成本：
                			<span id="cost">0</span>
                		</label>
                		<input id="productCost" type="hidden" name="productCost" value="0"/>
                		<input id="productDetail" type="hidden" name="productDetail" value="0"/>
		        	</div>
		        </div>
      			<c:forEach items="${ss }" var="ss">
	            	<input  type="hidden" name="ss" value="${ss }"/>
	            </c:forEach>
	      		<div id="productContent">
		           	<c:forEach items="${result }" var="entry">
		            	<div class="products">
		            	<input id="${entry.key}" type="hidden" name="" value="0"/>

		                 <label>${entry.key}</label>
		                 <div>
		                 	<input id="title" type="hidden" name="hidden" value="${entry.key}"/>
		             		<c:forEach items="${entry.value}" var="item">
		             			<div>
		                  			<label class="product_detail">
		                  			
			                       		<input id="${item.id }ss" type="radio" name="${item.title }" value="${item.id }" onclick="check(this)">
			                        	${item.detail}
			                        </label>
			                        <label class="product_price" id="${item.id }">${item.price }</label>
		                      </div>
		            		</c:forEach>
		                 </div> 
		           		</div>
		            </c:forEach>
	            </div>
	
	            <div id="box_4">
	               <img src="images/phone.png" class="phone" />
	            </div>
	       
		       	<div id="decisionFoot">
		            <input type="button" name="cancel" class="btn" value="取消" style="margin-right:100px" onclick="window.open('CompanyProduct.do', '_self'); " />
		            <input type="button" id="baocun" class="btn" value="保存" style="margin-right:20px" onclick="baocun(); "/>
	       		</div>
    		</form> 
    	</div>    
		<div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript">

		
		
		document.getElementById("baocun").onclick = function () {
			
			//判断查询
			var ss=document.getElementsByName("ss");
			if(ss.length!=0){
				document.getElementById("flag").value="update";
			}
			
			var selectOption="";
			
			//判断产品名字
			var name=$("#Brand_name").val();
			if(name==""){
				alert("请输入产品名字！");
				return;
			}
			
			//判断手机配置选择
			var title=$(":input[id=title]");
			
			
			for(var i=0;i<title.length;i++){
				
				var select=$(":input[name="+title[i].value+"]:checked").val();
				
				if(i!=title.length-1){
					selectOption+=select+",";
					
				}
				else{
					selectOption+=select;
					
				}
				
				if(title[i].value!='蓝牙'&&select!='其他功能'){
					if(select==null){
						alert("请选择"+title[i].value+"！");
						return;
					}		
				}	
			}
			/* alert(selectOption); */
			document.getElementById("productDetail").value=selectOption;
			alert("保存成功");
			document.getElementById("form1").submit();  

		}
		
		//计算组件成本
		function check(obj){
			
			//取目前成本的值
			var cost=$("#cost").text();
			
			
			//计算当前栏目成本
			var name=obj.name;
			var box_cost=document.getElementById(name).value;//当前栏目的值
			/* alert(name);//运营商
			alert(box_cost); //当前栏目的成本 */

			//当前选项成本
			var label=document.getElementById(obj.value);
			/* alert(label.innerText); */
			
			
			//判断并计算
			if(box_cost==0){
				/* alert("true");  */
				cost=parseInt(cost)+parseInt(label.innerText);
				document.getElementById(name).value=label.innerText; 
				
				
			}else{
				/* alert("false");  */
				cost=parseInt(cost)-parseInt(box_cost);
				cost=parseInt(cost)+parseInt(label.innerText);
				document.getElementById(name).value=label.innerText; 
			}
			
			
			//赋值
			document.getElementById("cost").innerText=cost;
			document.getElementById("productCost").value=cost; 
			
			
		}
		
		
		
		
		
		
        
        

    </script> 
</body>
</html>