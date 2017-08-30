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
        body{
            width: 99%;
            margin:4px;
        }
        .panel{
            margin: 0px;
        }
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">市场规模</div>
        <div class="panel-body">
        	<ul class="nav nav-tabs">
                
                <li class="active"><a href="#notice1" data-toggle="tab"> 实体市场规模</a></li>
                <li><a href="#notice2" data-toggle="tab"> 网络市场规模</a></li>
            </ul>
            <div class="tab-content">
             <div class="tab-pane fade in active" id=notice1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th>实用型</th>
                        <th>极致型</th>
                        <th>商务型</th>
                        
                    </tr>
                </thead>
               <tbody id="data_body">
                   <c:forEach items="${MarketInfoList }" var="item">
	                	<tr>	
	                		<td>${item.city}</td>
	                		<td>${item.practical }</td>
	                		<td>${item.perfect }</td>
	                		<td>${item.business }</td>
	                	</tr>
	                </c:forEach>    
               </tbody>
            </table>
            </div>
            
            <div class="tab-pane fade" id=notice2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th>实用型</th>
                        <th>极致型</th>
                        <th>商务型</th>
                        
                    </tr>
                </thead>
            	<tbody id="data_body1">
                     <c:forEach items="${MarketInfoList }" var="item">
	                	<tr>	
	                		<td>${item.city}</td>
	                		<td>${item.webPractical }</td>
	                		<td>${item.webPerfect }</td>
	                		<td>${item.webBusiness }</td>
	                	</tr>
	                </c:forEach>    
            	</tbody>
            </table>
            </div>
            </div>
           
            
            <div id="main" style="width: 600px;height:400px;"></div>
        </div>
        <div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			type:'post',
			url:"showMarketInfo.do",
			success: function(data){
			    var dataHtml="";
				$.each(data , function(index,obj){
					dataHtml+="<tr>";
					dataHtml+="<td>"+obj.city+"</td>";
					dataHtml+="<td>"+obj.practical+"</td>";
					dataHtml+="<td>"+obj.perfect+"</td>";
					dataHtml+="<td>"+obj.business+"</td>";
					dataHtml+="</tr>";
					
					
		  		});
		  		$("#data_body").append(dataHtml);
			}
		});
	})
	
</script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			type:'post',
			url:"showMarketInfo.do",
			success: function(data){
			    var dataHtml="";
				$.each(data , function(index,obj){
					dataHtml+="<tr>";
					dataHtml+="<td>"+obj.city+"</td>";
					dataHtml+="<td>"+obj.webPractical+"</td>";
					dataHtml+="<td>"+obj.webPerfect+"</td>";
					dataHtml+="<td>"+obj.webBusiness+"</td>";
					dataHtml+="</tr>";
					
					
		  		});
		  		$("#data_body1").append(dataHtml);
			}
		});
	})
	
</script>


     <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
           title: {
        text: '按用途划分的细分市场',
        subtext: '数据来自网络'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    legend: {
        data: ['实用型','极致型','商务型']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis: {
        type: 'value',
        boundaryGap: [0, 0.01]
    },
    yAxis: {
        type: 'category',
        data: ['新加坡','香港','莫斯科','新德里']
    },
    series: [
        {
            name: '实用型',
            type: 'bar',
            data: [14412, 15324, 17576, 18756]
        },
        {
            name: '极致型',
            type: 'bar',
            data: [18971, 19124, 18967, 16754]
        },
        {
            name: '商务型',
            type: 'bar',
            data: [19865, 18734, 19654, 15432]
        }

        
    ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>

</body>
</html>