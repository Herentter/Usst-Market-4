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
<base href="<%=basePath %>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">
<style>
	body{
		width:99%;
	}
</style>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript">
function init(){
	//用隐藏域记录选中项id
	var strategy=$("#myHidden").val();
	//转换成字符串
	var strategyArr= strategy.split(",");
	//匹配id,进行check
	var id="";
	for(var i=0;i<strategyArr.length-1;i++){
		id=strategyArr[i];
		var obj=document.getElementsByName("ability");
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

	<div id="nav44">
		<div class="panel panel-info">
            <div class="panel-heading">
                <span>目标与策略</span>
            </div>
            <div class="panel-body">
                <form  id="form1" class="form-horizontal" role="form" method="post" action="updateCompanyStrategy.do" >
                    <div class="form-group">
                        <label class="col-md-2 col-xs-2 control-label">主要产品类型：</label>
                        <div class="dropdown col-md-3 col-xs-3">
                            <select id="mainProduct"  name="mainPro" class="selectpicker show-tick form-control">
                                <option <c:if test="${companyStrategy.mainPro==null}">  selected="true" </c:if>>--请选择--</option>
                                <option <c:if test="${companyStrategy.mainPro=='极致型'}">  selected="true" </c:if>>极致型</option>
                                <option <c:if test="${companyStrategy.mainPro=='商务型'}">  selected="true" </c:if>>商务型</option>
                                <option <c:if test="${companyStrategy.mainPro=='实用型'}">  selected="true" </c:if>>实用型</option>
                            </select>
                        </div> 
                        
                        <label class="col-md-2 col-xs-2 control-label">次要产品类型：</label>
                        <div class="dropdown col-md-3 col-xs-2">
                            <select id="minorProduct"  name="minorPro" class="selectpicker show-tick form-control">
                                <option <c:if test="${companyStrategy.minorPro==null}">  selected="true" </c:if>>--请选择--</option>
                                <option <c:if test="${companyStrategy.minorPro=='极致型'}">  selected="true" </c:if>>极致型</option>
                                <option <c:if test="${companyStrategy.minorPro=='商务型'}">  selected="true" </c:if>>商务型</option>
                                <option <c:if test="${companyStrategy.minorPro=='实用型'}">  selected="true" </c:if>>实用型</option>
                            </select>
                        </div>
                        <div class="col-md-5 col-xs-5"></div>  
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-md-2 col-xs-2 control-label">服务理念：</label>
                        <div class="col-md-5 col-xs-5">
                            <input type="text" class="form-control" placeholder="Service Concept" name="service" value="${companyStrategy.service}">
                        </div>
                        
                    </div>
                  	
                    <input id="myHidden" type="hidden" name="myHidden" value="${companyStrategy.strategyId }"/>
                    
                    <c:forEach items="${result }" var="entry">
                    	<div class="form-group btn-grounp">
                        <label for="password" class="col-md-2 col-xs-2 control-label">${entry.key}：</label>
                        <div class="col-md-4 col-xs-4">
                        
                   		<c:forEach items="${entry.value}" var="item">
                            <div>     
                                <input type="checkbox" name="ability" value="${item.id }" ><label>${item.detail}</label>
                            </div>
                  		</c:forEach>
                            
                        </div> 
                    </div>
                    </c:forEach>
                    
                   
                    <div id="btndiv">
                        <button type="button" class="btn btn-default" onclick="sign()">提交</button><br>
                    </div>
                    <br><br>
                </form>
            </div>
        	<div class="panel-footer"></div>    
    	</div>
	</div>
</body>


<script type="text/javascript">
	function sign() {
		
		/* var obj1=document.getElementById("mainProduct");
		var index=obj1.selectedIndex ;   
		var mainProduct=obj1.options[index].text; */
		
		var mainProduct=$("#mainProduct").val();
		
		/* var obj2=document.getElementById("minorProduct");
		var index=obj2.selectedIndex ;   
		var minorProduct=obj2.options[index].text; */
		
		var minorProduct=$("#minorProduct").val();
		
		if(mainProduct=="--请选择--"){
			alert("请选择主要产品类型！");
			history.go(0);
			return;
			
		}
		else if(minorProduct=="--请选择--"){
			alert("请选择次要产品类型！");
			history.go(0);
			return;
		}
		else if(mainProduct==minorProduct){
			alert("主要产品类型和次要产品类型不能一致！");
			history.go(0);
			return;
		}
		
		alert("提交成功！");
		
		document.getElementById("form1").submit();  
		
		
		
		

		
		
        
	}
</script> 




</html>