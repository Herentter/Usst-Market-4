<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath %>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资产负债表</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">

</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
			<div class="panel-heading">
				<span>${chartName }</span>
			</div>

			<div class="panel-body">
				<input type="hidden" id="quarter" value="${quarter }"/>
				<div>
					<table class="table table-bordered" id="tab">
						<thead>
							<tr  id="companyName">
								<th>公司名称</th>
								<c:forEach items="${companyList }" var="item">
									<th>${item.name }</th>
								</c:forEach>
							</tr>
						</thead>
						<tbody id="asset">
							<c:forEach items="${resultChartList }" var="item">
								<tr>
									<td>季度</td>
									<c:forEach items="${item }" var="item2">
										<td>${item2 }</td>
									</c:forEach>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 下面div用于画图 -->
				<div id="main" style="width: 700px;height:400px;"></div>
			</div>

			<div class="panel-footer"></div>
		</div>
	</div>
	
	<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery.pagination.js"></script>
	<script type="text/javascript" src="js/echarts.min.js"></script>
	<script type="text/javascript">
		//季度数组
		var quarter = document.getElementById("quarter").value;
		var quarterArr= new Array();
		for(var i=1;i<=quarter;i++){
			quarterArr[i-1]="季度"+i;
		}
		
		var table = document.getElementById("tab");
		var column = table.rows[0].cells.length;
		//公司名称数组
		var companyName = new Array();
		for(var i=1;i<=column-1;i++ ){
			companyName[i-1]=document.getElementById("companyName").cells[i].innerHTML;
		}
		
		//定义二维数组，存储每个公司每季度的负债
		var quarterAssetArr = new Array();
		for(var i=0;i<column-1;i++){
			var quarterAsset= new Array();
			for(var j=0;j<=quarter-1;j++){
				//var assetNode = document.getElementById("asset");
				//var num=document.getElementById("asset").rows[1].cells[1].innerHTML;
				quarterAsset[j]=document.getElementById("asset").rows[j].cells[i+1].innerHTML;
			}
			quarterAssetArr[i]=quarterAsset;
		}
		
		//series[]
		var seriesArr=new Array();
		for(var i=0;i<column-1;i++){
			seriesArr.push({
				name:companyName[i],
				type:"bar",
	            data:quarterAssetArr[i]
			});
		}
		
		
		// 基于准备好的dom，初始化echarts实例
	    var myChart = echarts.init(document.getElementById('main'));
	    // 指定图表的配置项和数据
	    var option = {
	       	title: {
		        text: '净收入',
		        subtext: '按季度比较'
		    },
		    tooltip: {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'shadow'
		        }
		    },
		    legend: {
		    	data: companyName
		        //data: ['公司1','公司2','公司3','公司4','公司5']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    xAxis: {
		    	type: 'category',
		        /* data: ['新加坡','香港','莫斯科','新德里'] */
		        //data:['季度1']
		        data:quarterArr
		    },
		    yAxis: {
		        
		        type: 'value',
		        boundaryGap: [0, 0.01]
		    },
		    
		    series: seriesArr
	    };
	
	    // 使用刚指定的配置项和数据显示图表。
	    myChart.setOption(option);
	</script>
</body>
</html>