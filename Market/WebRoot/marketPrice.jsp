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
        <div class="panel-heading">市场价格</div>
        <div class="panel-body">
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
	                <c:forEach items="${PriceInfoList }" var="item">
	                	<tr>
	                		<td>市场价格</td>
	                		<td>${item.practical }</td>
	                		<td>${item.perfect }</td>
	                		<td>${item.business }</td>
	                		
	                	</tr>
	                	<input id="practical" type="hidden" value="${item.practical }">
	                	<input id="perfect" type="hidden" value="${item.perfect }">
	                	<input id="business" type="hidden" value="${item.business }">
	                </c:forEach>
             	</tbody>
            </table>
            <div id="main" style="width: 600px;height:400px;"></div>
        </div>
        <div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
<!-- <script type="text/javascript">
	$(function(){
		$.ajax({
			type:'post',
			url:"showPriceInfo.do",
			success: function(data){
			    var dataHtml="";
				$.each(data , function(index,obj){
					dataHtml+="<tr>";
					dataHtml+="<td>市场价格</td>";
					dataHtml+="<td>"+obj.practical+"</td>";
					dataHtml+="<td>"+obj.perfect+"</td>";
					dataHtml+="<td>"+obj.business+"</td>";
					dataHtml+="</tr>";
					
					
		  		});
		  		$("#data_body").append(dataHtml);
			}
		});
	})
	
</script> -->


    <script type="text/javascript">
    
    	var a=$("#business").val();
    	var b=$("#perfect").val();
    	var c=$("#practical").val();
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
           title: {
        text: '消费者愿意支付的价格',
        // subtext: '数据来自网络'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    legend: {
        data: ['价格(元)']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis: {
        type: 'value',
        boundaryGap: [0, 0.01],
     

    },
    yAxis: {
        posotion:'right',
        name:'手机类型',
        type: 'category',
        data: ['商务型','极致型','实用型']
    },
    series: [
        {
            name: '价格(元)',
            type: 'bar',
            color:[ '#d48265','#61a0a8','#c23531','#2f4554',  '#91c7ae','#749f83',  '#ca8622', '#bda29a','#6e7074', '#546570', '#c4ccd3'],
            data: [a, b, c]
        } 
    ]

        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>

</body>
</html>