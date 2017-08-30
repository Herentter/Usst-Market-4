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
<style type="text/css">
        html{
            height: 100%;
        }
        body{ scrollbar-face-color:#f6f6f6; scrollbar-highlight-color:#fff; scrollbar-shadow-color:#eeeeee; scrollbar-3dlight-color:#eeeeee; scrollbar-arrow-color:#000; scrollbar-track-color:#fff; scrollbar-darkshadow-color:#fff; } 
        body{
            padding:0px;
            margin:0px;
            height: 500px;
            font-family: "Microsoft YaHei"
        }
        a{color: white;}
        .nav {width: 190px; padding: 40px 28px 25px 0;height:100%;background: 
            #1e485d;color: white;box-sizing: border-box;--moz-box-sizing: border-box;}  
        ul.nav {padding: 0; margin: 0; font-size: 1em; line-height: 0.5em; list-style: none;}  
        ul.nav li {margin-top: 10px;}  

        ul.nav li a {line-height: 10px; font-size: 16px; padding: 10px 5px; color: #fff;text-indent: 15px; display: block; 
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
    </style>
</head>
<body>






<ul class="nav"> 
   <li>
        <a href="#none">上季度财会报表<i></i></a>
        <ul>
            <li><a href="cashFlow.jsp" target="main">现金流表</a></li>
            <li><a href="incomeStatement.jsp" target="main">损益表</a></li>
            <li><a href="assertSheet.jsp" target="main">资产负债表</a></li>
        </ul>
   </li> 
   <li>
        <a href="#none">市场营销<i></i></a>
        <ul>
            <li>
                <a href="#" target="main">品牌管理</a>
                <ul>
                    <li><a href="customRequired.jsp" target="main">客户需求</a></li>
                    <li><a href="productUse.jsp" target="main">产品用途</a></li>
                    <li><a href="productUse.jsp" target="main">设计品牌</a></li>
                </ul>

            </li>
            <li><a href="#" target="main">定价</a>
                <ul>
                    <li><a href="marketPrice.jsp" target="main">愿意支付的价格</a></li>
                    <li><a href="marketPrice.jsp" target="main">生产成本</a></li>
                    <li><a href="marketPrice.jsp" target="main">优先级别</a></li>
                </ul>
            </li>
            <li><a href="#" target="main">广告</a>
                <ul>
                    <li><a href="customRequired.jsp" target="main">客户需求</a></li>
                    <li><a href="marketPrice.jsp" target="main">设计广告</a></li>
                    <li><a href="marketPrice.jsp" target="main">媒体偏好</a></li>
                    <li><a href="marketPrice.jsp" target="main">主流媒体投放</a></li>
                    <li><a href="marketPrice.jsp" target="main">检查广告语</a></li>
                    <li><a href="marketPrice.jsp" target="main">购买市场调研报告</a></li>
                </ul>
            </li>
        </ul>
   </li>
   <li>
        <a href="#none">销售渠道<i></i></a>
        <ul>
            <li><a href="#" target="main">实体销售中心</a>
                <ul>
                    <li><a href="employeeSaleman.jsp" target="main">雇佣销售人员</a></li>
                    <li><a href="marketScale.jsp" target="main">市场规模</a></li>
                    <li><a href="openPhysicalStore.jsp" target="main">开设实体销售中心</a></li>
                </ul>
            </li>
            <li><a href="#" target="main">网络销售中心</a>
                <ul>
                    <li><a href="netSale.jsp" target="main">网络销售及支持</a></li>
                    <li><a href="netAccess.jsp" target="main">网站访问量</a></li>
                    <li><a href="netEfficiency.jsp" target="main">网络中心销售效率</a></li>
                    <li><a href="openNetStore.jsp" target="main">开设网络销售中心</a></li>
                </ul>
            </li>
            
        </ul>
    </li>
    <li>
        <a href="#none">人力资源<i></i></a>
        <ul>
            <li><a href="inSalemanWage.jsp" target="main">业内销售人员薪酬</a></li>
            <li><a href="salemanWage.jsp" target="main">销售人员薪酬</a></li>
            <li><a href="inWorkerWage,jsp" target="main">业内工厂工人薪酬</a></li>
            <li><a href="workerWage.jsp" target="main">工厂工人薪酬</a></li>
        </ul>
    </li>
    <li>
        <a href="#none">生产制造<i></i></a>
        <ul>
            <li><a href="requirePredict.jsp" target="main">需求量预测</a></li>
            <li><a href="storeControl.jsp" target="main">库存控制</a></li>
            <li><a href="opreativeProduce.jsp" target="main">运行产能</a></li>
            <li><a href="factorySimulation.jsp" target="main">工厂模拟</a></li>
            <li><a href="constantproduce.jsp" target="main">固定产能</a></li>
        </ul>
    </li>
    <li>
        <a href="#none">财会预算<i></i></a>
        <ul>
            <li><a href="cashTable.jsp" target="main">现金流表</a></li>
            <li><a href="lossTable.jsp" target="main">损益表</a></li>
            <li><a href="assertTable" target="main">资产负债表</a></li>
        </ul>
    </li>

    <li>
         <a href="#none">决策汇总<i></i></a>
        <ul>
            <li><a href="11.jsp">导航选项</a></li>
            <li><a href="11.jsp">导航选项</a></li>
        </ul>
    </li>
   <!-- <li><a href="#">文章</a></a> 
        <ul> 
           <li><a href="#" target="_blank">XHTML/CSS</a></li> 
           <li><a href="#">Javascript/Ajax</a> 
                <ul> 
                    <li><a href="#">Cookies</a></li> 
                    <li><a href="#">Event</a></li> 
                    <li><a href="#">Games</a></li> 
                    <li><a href="#">Images</a></li> 
                </ul> 
            </li> 
            <li><a href="#" target="_blank">PHP/MYSQL</a></li> 
            <li><a href="#" target="_blank">前端观察</a></li> 
            <li><a href="#" target="_blank">HTML5/移动WEB应用</a></li> 
        </ul> 
    </li>   -->
</ul> 

<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/accordion.js"></script>
<script type="text/javascript">
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
</script>

</body>
</html>