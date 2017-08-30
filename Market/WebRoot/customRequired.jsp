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
        <div class="panel-heading">客户需求</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>实用型</th>
                        <th>极致型</th>
                        <th>商务型</th>
                    </tr>
                </thead>
                <tbody id="data_body">
                    <c:forEach items="${demandInfoList }" var="item">
                    	<tr>
                    		<td>${item.detail }</td>
                    		<td>${item.practical }</td>
                    		<td>${item.perfect }</td>
                    		<td>${item.business }</td>
                    	</tr>
                    
                    </c:forEach>
                </tbody>
            </table>
    	<div id="main" style="width: 600px;height:400px;"></div>
        </div>
        <div class="panel-footer"></div>
    </div>
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
	<script type="text/javascript">
	/* $(function(){
		$.ajax({
			type:'post',
			url:"showDemandInfo.do",
			success: function(data){
			    var dataHtml="";
				$.each(data , function(index,obj){
					dataHtml+="<tr>";
					dataHtml+="<td>"+obj.detail+"</td>";
					dataHtml+="<td>"+obj.practical+"</td>";
					dataHtml+="<td>"+obj.perfect+"</td>";
					dataHtml+="<td>"+obj.business+"</td>";
					dataHtml+="</tr>";	
		  		});
		  		$("#data_body").append(dataHtml);
			}
		});
	}); */
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
        data: ['日历','备忘录','浏览器','天气','视频/语音','收音机','文件管理','手机管家']
    },
    series: [
        {
            name: '实用型',
            type: 'bar',
            data: [126, 123, 123, 117, 115, 109,103,102],
            color:['#61a0a8']
        },
        {
            name: '极致型',
            type: 'bar',
            data: [127, 125, 119, 128, 123, 100,124,130],
            color:['#d48265']
        },
        {
            name: '商务型',
            type: 'bar',
            data: [121, 125, 117, 123, 126, 107,129,125],
            color:['#91c7ae']
        },
        //['#c23531','#2f4554', '#61a0a8', '#d48265', '#91c7ae','#749f83',  '#ca8622', '#bda29a','#6e7074', '#546570', '#c4ccd3']
        
    ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</html>