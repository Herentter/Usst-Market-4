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
<link rel="stylesheet" type="text/css" href="css/physicalStore.css">
    <!-- <link rel="stylesheet" type="text/css" href="http://www.helloweba.com/demo/css/main.css" /> -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
    	body{
    		width:99%;
    	}
        /*.demo{width:560px; margin:60px auto 10px auto}
        .wrap{margin:10px 0}
        .wrap p{padding:10px 0}*/
    </style>
    <script type="text/javascript" src="js/modernizr.js"></script>
</head>
<body>
	
    <div class="panel panel-info">
        <div class="panel-heading">实体销售中心</div>
        <div class="panel-body">
            <form>
                <div id="region">
                	<c:forEach items="${marketInfoList}" var="item">
              			<div id="china" class="branch">
                        <figure class="test1">
                            <div>
                                <input type="checkbox" class="chk_1" />
                                <label for="checkbox_d1"></label>
                            </div>
                             <img src="${item.img }">
                            <figcaption>
                                <h3>${item.city }</h3>
                                <p>实用型：${item.webPractical }</p>
                                <p>极致型：${item.webPerfect }</p>
                                <p>商务型：${item.webBusiness }</p> 
                                <br><br>
                                <p>开设成本：${item.webOpen }</p>
                                <p>开设成本：${item.webRent }</p>
                            </figcaption>
                        </figure>
                    </div>
    				</c:forEach>
                    <%-- <div id="china" class="branch">
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

                    <div id="china1" class="branch">
                        <figure class="test1">
                            <div>
                                <input type="checkbox" id="checkbox_d2" class="chk_1" />
                                <label for="checkbox_d2"></label>
                            </div>
                            <img src="images/hongkong.jpg">
                            <figcaption>
                                <h3>香港</h3>
                                <p>实用型：18937</p>
                                <p>极致型：18937</p>
                                <p>商务型：18937</p>
                                <br><br>
                                <p>开设成本：160000</p>
                                <p>开设成本：160000</p>
                            </figcaption>
                        </figure>
                    </div>

                    <div id="china1" class="branch">
                        <figure class="test1">
                            <div>
                                <input type="checkbox" id="checkbox_d3" class="chk_1" />
                                <label for="checkbox_d3"></label>
                            </div>
                            <img src="images/moscow1.jpg">
                            <figcaption>
                                <h3>莫斯科</h3>
                                <p>实用型：18937</p>
                                <p>极致型：18937</p>
                                <p>商务型：18937</p>
                                <br><br>
                                <p>开设成本：160000</p>
                                <p>开设成本：160000</p>
                            </figcaption>
                        </figure>
                    </div>

                    <div id="china1" class="branch">
                        <figure class="test1">
                            <div>
                                <input type="checkbox" id="checkbox_d4" class="chk_1" />
                                <label for="checkbox_d4"></label>
                            </div>
                            <img src="images/newdelhi.jpg">
                            <figcaption>
                                <h3>新德里</h3>
                                <p>实用型：18937</p>
                                <p>极致型：18937</p>
                                <p>商务型：18937</p>
                                <br><br>
                                <p>开设成本：160000</p>
                                <p>开设成本：160000</p>
                            </figcaption>
                        </figure>
                    </div> --%>
                    <div class="split"></div>
                    <br>
                    <br>
                    <div class="btn-group" >
                        <label class="btn btn-default">     
                            <input id="show" type="checkbox" name="hoppy">显示/隐藏
                        </label>
                        
                    </div>
                    <button class="btn btn-default">提交</button>
                </div>
            </form>
        </div>
        <div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>   
<script type="text/javascript">
$(function(){
    $(".test1 div label").on("click",function(){
        var a=$(this).parent().siblings();
        alert(a);
    });


    $(".test1").on("mouseover",function(){
        $(this).children("figcaption").children('p').css({
            'transform': 'translate(0px,0px)'
        });
    });
    $(".test1").on("mouseout",function(){
        $(this).children("figcaption").children('p').css({
            'transform': 'translate(-200px,0px)'
        });
        $("input[id='show']").attr("checked",false);
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
            
            // return true;
        }
    });

     
});
</script>
</body>
</html>