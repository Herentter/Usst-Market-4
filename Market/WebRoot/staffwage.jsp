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
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <style type="text/css">
        body{
            width: 99%;
            margin:4px;
        }
        .panel{
            margin: 0px;
        }
        .panel-body{
            /*background:#2c343c;*/
        }
        .table{
            /*color:#999;*/
            margin-top:20px;
        }
        .panel-heading{
            /*font-weight: bold;
            letter-spacing: 2px;*/
        }
        #main,#main2{
            background: #2c343c;
            width: 400px;
            height: 300px;
        }
        
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">员工薪酬</div>
        <div class="panel-body">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#notice1" data-toggle="tab"> 公告1</a></li>
                <li><a href="#notice2" data-toggle="tab"> 销售人员薪酬</a></li>
                <li><a href="#notice3" data-toggle="tab"> 工厂工人薪酬</a></li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane fade in active" id="notice1">
                    在争夺高素质销售人员方面的竞争相当激烈。 您提供的薪酬水平，相对于竞争对手和整个电子行业而言，将决定公司能雇佣并留住高素质员工的能力。 相对于行业整体水平的薪酬越高，员工的积极性就越高，因此也会创造出更高的市场需求量。
                    您将提供的薪酬组合包括了年薪、医疗福利、假期、以及退休金。 从第二季度进行市场开始，您将能够调整销售人员的薪酬组合。 之后您可以每个季度自由调整员工的薪酬组合。
                </div>
                <div class="tab-pane fade" id="notice2">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>区域</th>
                                <th>工资</th>
                                <th>五险一金</th>
                                <th>休假</th>
                                <th>福利</th>
                                <th>退休金</th>
                            </tr>
                        </thead>
                            <tbody>
                                <tr>
                                    <td>></td>
                                    <td>10,000</td>
                                    <td>1,800</td>
                                    <td>8天</td>
                                    <td>500</td>
                                    <td>3,0000</td>
                                </tr>
                                 <tr>
                                    <td>0</td>
                                    <td>50</td>
                                    <td>1,625</td>
                                    <td>6000,000</td>
                                    <td>24.000</td>
                                    <td>24.000</td>
                                </tr>
                            </tbody>
                    </table>
                    <div id="main"></div>
                </div>
                <div class="tab-pane fade" id="notice3">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>区域</th>
                                <th>工资</th>
                                <th>五险一金</th>
                                <th>休假</th>
                                <th>福利</th>
                                <th>退休金</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>></td>
                                <td>10,000</td>
                                <td>1,800</td>
                                <td>8天</td>
                                <td>500</td>
                                <td>3,0000</td>
                            </tr>
                             <tr>
                                <td>0</td>
                                <td>50</td>
                                <td>1,625</td>
                                <td>6000,000</td>
                                <td>24.000</td>
                                <td>24.000</td>
                            </tr>
                        </tbody>
                    </table>
                    <div id="main2" style="width: 400px;height:300px;"></div>
                </div>
            </div>
        </div>
        <div class="panel-footer"></div>
    </div>
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>
<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var myChart2 = echarts.init(document.getElementById('main2'));

        // 指定图表的配置项和数据
        option = {
    backgroundColor: '#2c343c',

    title: {
        text: 'Customized Pie',
        left: 'center',
        top: 20,
        textStyle: {
            color: '#ccc'
        }
    },

    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },

    visualMap: {
        show: false,
        min: 80,
        max: 600,
        inRange: {
            colorLightness: [0, 1]
        }
    },
    series : [
        {
            name:'访问来源',
            type:'pie',
            radius : '55%',
            center: ['50%', '50%'],
            data:[
                {value:335, name:'福利'},
                {value:310, name:'休假'},
                {value:274, name:'五险一金'},
                {value:235, name:'退休金'},
                {value:400, name:'基本工资'}
            ].sort(function (a, b) { return a.value - b.value}),
            roseType: 'angle',
            label: {
                normal: {
                    textStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    }
                }
            },
            labelLine: {
                normal: {
                    lineStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                }
            },
            itemStyle: {
                normal: {
                    color: '#c23531',
                    shadowBlur: 200,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            },

            animationType: 'scale',
            animationEasing: 'elasticOut',
            animationDelay: function (idx) {
                return Math.random() * 200;
            }
        }
    ]
};


option2 = {
    backgroundColor: '#2c343c',

    title: {
        text: 'Customized Pie',
        left: 'center',
        top: 20,
        textStyle: {
            color: '#ccc'
        }
    },

    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },

    visualMap: {
        show: false,
        min: 80,
        max: 600,
        inRange: {
            colorLightness: [0, 1]
        }
    },
    series : [
        {
            name:'访问来源',
            type:'pie',
            radius : '55%',
            center: ['50%', '50%'],
            data:[
                {value:335, name:'福利'},
                {value:310, name:'休假'},
                {value:274, name:'五险一金'},
                {value:235, name:'退休金'},
                {value:400, name:'基本工资'}
            ].sort(function (a, b) { return a.value - b.value}),
            roseType: 'angle',
            label: {
                normal: {
                    textStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    }
                }
            },
            labelLine: {
                normal: {
                    lineStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                }
            },
            itemStyle: {
                normal: {
                    color: '#c23531',
                    shadowBlur: 200,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            },

            animationType: 'scale',
            animationEasing: 'elasticOut',
            animationDelay: function (idx) {
                return Math.random() * 200;
            }
        }
    ]
};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        myChart2.setOption(option2);
    </script>
</html>