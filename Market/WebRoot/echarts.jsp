<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Created By 陈立阳" />
<script type="text/javascript" src="js/echarts.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width: 600px; height: 400px;"></div>
	<script type="text/javascript">
		var myChart = echarts.init(document.getElementById('main'));
		// 显示标题，图例和空的坐标轴
		myChart.setOption({
			title : {
				text : 'Echarts Demo' //标题
			},
			tooltip : {},
			toolbox : {
				feature : {
					dataView : { //将数据以表格形式显示
						show : true,
						readOnly : false
					},
					dataZoom : { //数据缩放视图
						show : true
					},
					magicType : { //将图形转化为不同的样式,如折线图、柱状图等
						show : true,
						type : [ 'line', 'bar' ]
					},
					restore : { //刷新
						show : true
					},
					saveAsImage : { //保存图形
						show : true
					}
				}
			},
			legend : {
				data : [ '销量' ]
			},
			xAxis : { //横坐标
				data : []
			},
			yAxis : {}, //纵坐标
			series : [ { //值
				name : '销量',
				type : 'bar',
				data : []
			} ]
		});

		myChart.showLoading(); //数据加载完之前先显示一段简单的loading动画

		var names = []; //类别数组（实际用来盛放X轴坐标值）
		var nums = []; //销量数组（实际用来盛放Y坐标值）

		$
				.ajax({
					type : "post",
					async : true,
					url : "echarts2.do",
					data : {},
					dataType : "json", //返回数据形式为json
					success : function(result) {
						if (result) {
							for (var i = 0; i < result.length; i++) {
								console.info(result[i].name);
								names.push(result[i].name); //挨个取出类别并填入类别数组
							}
							for (var i = 0; i < result.length; i++) {
								nums.push(result[i].num); //挨个取出销量并填入销量数组
							}
							myChart.hideLoading(); //隐藏加载动画
							myChart
									.setOption({ //加载数据图表
										xAxis : {
											data : names
										},
										series : [ {
											// 根据名字对应到相应的系列
											name : '销量',
											data : nums,
											itemStyle : {
												normal : {
													color : function(params) {
														// build a color map as your need.
														var colorList = [
																'#C1232B',
																'#B5C334',
																'#FCCE10',
																'#E87C25',
																'#27727B',
																'#FE8463',
																'#9BCA63',
																'#FAD860',
																'#F3A43B',
																'#60C0DD',
																'#D7504B',
																'#C6E579',
																'#F4E001',
																'#F0805A',
																'#26C0C0' ];
														return colorList[params.dataIndex]
													}
												}
											}
										} ]
									});

						}

					},
					error : function(errorMsg) {
						//请求失败时执行该函数
						alert("图表请求数据失败!");
						myChart.hideLoading();
					}
				})
	</script>
</body>
</html>