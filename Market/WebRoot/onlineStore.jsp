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
<style>
	body{
    		width:99%;
    	}
</style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">网络销售中心</div>
        <div class="panel-body">
            <div id="region">
                <c:forEach items="${marketInfoList}" var="item">
              			<div id="china" class="branch">
                        <figure class="test1">
                            <div>
                                <input type="checkbox" id="checkbox_d1" class="chk_1" />
                                <label for="checkbox_d1"></label>
                            </div>
                             <img src="${item.img }">
                            <figcaption>
                                <h3>${item.city }</h3>
                                <p>实用型：${item.practical }</p>
                                <p>极致型：${item.perfect }</p>
                                <p>商务型：${item.business }</p> 
                                <br><br>
                                <p>开设成本：${item.open }</p>
                                <p>开设成本：${item.rent }</p>
                            </figcaption>
                        </figure>
                    </div>
    				</c:forEach>

              
                <div class="split"></div>
                <br>
                <div class="btn-group" >
                    <label class="btn btn-default">     
                        <input id="show" type="checkbox" name="hoppy">显示/隐藏
                    </label>
                </div>
                <button class="btn btn-default">提交</button>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>   
<script type="text/javascript">
$(function(){
    $(".test1").on("mouseover",function(){
        $(this).children("figcaption").children('p').css({
            'transform': 'translate(0px,0px)'
        });
    });
    $(".test1").on("mouseout",function(){
        $(this).children("figcaption").children('p').css({
            'transform': 'translate(-200px,0px)'
        });
        $("input[type='checkbox']").attr("checked",false);
        $("#show").removeClass("active");
    });

    $("#show").on('click',function(){
        if($(this).hasClass('active')){
            $(".test1 figcaption p").css({
            'transform': 'translate(-200px,0px)'
            });
            $(this).removeClass("active");
            $("#show").css("checked",false);
            // return false;
        }else{
            $(".test1 figcaption p").css({'transform': 'translate(0px,0px)'});
            $(this).addClass("active");
            $("#show").css("checked",true);
            
            return true;
        }
    });

     
});
</script>
</body>
</html>