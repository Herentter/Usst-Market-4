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
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<style type="text/css">
        body{
            width: 99%;
            margin:5px;
        }
        .firstnav,.secondsubnav{
        	font-weight: bold;
        }
        .panel{
            margin: 0px;
        }
        #notice2{
        	min-height:420px;
        }
        
        .course_content{
        	border:1px solid #0ff;
        	margin-top:10px;
        	padding:20px;
        	min-height:220px;
        	font-size:14px;
        	letter-spacing:1px;
        }
        .left{
        	/* border:1px solid blue; */
        	width:450px;
        	padding:20px;
        	float:left;
        	background:#eee;
        	margin:10px 0 0 2px;
        	min-height:220px;
        }
        .left_title span i{
        	color:#009;
        	font-size:18px;
        	margin-right:6px;
        }
        
        
        .right{
        	/* border:1px solid blue; */
        	width:400px;
        	padding:20px;
        	float:left;
        	background:#abcdef;
        	margin:10px 0 0 60px;
        	min-height:120px;
        }
        
        .right_title span i{
        	color:red;
        	font-size:22px;
        	margin-right:6px;
        }
        .text0{
        	margin-left:30px;
        	margin-top:10px;
        }
        .text1{
		text-indent:30px;
		margin-top:10px;
	}
	.text1_ul{
		margin-left:40px;
		margin-top:10px;
	}
	.text2{
        	margin-left:30px;
        	margin-top:25px;
        }
	.left_content li{
		margin-top:5px;
	}
	.tab-content{
		margin-top:10px;
	}
</style>
</head>
    <body>
	<div class="panel panel-info">
	    <div class="panel-heading">
	        <h3 class="panel-title">现金流表</h3>
	    </div>
	    <div class="panel-body">
	    	<ul class="nav nav-tabs">
                <li><a href="#notice1" data-toggle="tab"> 课程介绍</a></li>
                <li class="active"><a href="#notice2" data-toggle="tab">决策界面</a></li>
            </ul>
            
            <div class="tab-content">
                <div class="tab-pane fade" id="notice1">
                	<div class="course_content">
						<div class="text1">
							当前季度的现金流表显示了资产负债表中各项数据的变化，包括现金。 这些变化将作为现金流入及流出列入现金流表，并分为经营、财务、及投资等几类。
						</div>
                   	</div>
                   	<!-- <div class="left">
                   		<div class="left_title">
                   			<span><i class="fa fa-tasks"></i></span><label>你的任务</label>
                   		</div>
                   		<div class="left_content">
                   		</div>
                   	</div> -->
                   	<div class="right">
                   		<div class="right_title">
                   			<span><i class="fa fa-lightbulb-o"></i></span><label>决策小提示</label>
                   		</div>
                   		<div class="right_content">
                   			要注意季末现金余额。 余额为 1 则意味着您的公司用完了所有的现金并被迫借入了紧急贷款。 紧急贷款将出现在现金流表的财务活动部分。
                   		</div>
                   	</div>
                </div>
                <div class="tab-pane fade  in active" id="notice2">
                	<table class="table table-bordered table-hover table-striped">
		<!--悬停表格布局-->
						<thead>
						  <tr>
						    <th>项目</th>
						    <th>季度1</th>
						   	<th>季度2</th>
						  </tr>
						</thead>
						<tbody>
						  <tr class="firstnav">
						    <td>一、经营活动产生的现金流量</td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">销售商品收到的现金</td>
						    <td>${cashFlowList[0].getXiaoshouGet()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">收取利息的现金</td>
						    <td>${cashFlowList[0].getLixiGet()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">收取利息授权的现金</td>
						    <td>${cashFlowList[0].getJishuGet()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">收到其他与经营活动有关的现金</td>
						    <td>${cashFlowList[0].getQitaGet()}</td>
						    <td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">经营活动现金流入小计</td>
						    <td>${cashFlowList[0].getXiaoshouGet()+
						    cashFlowList[0].getLixiGet()
						    +cashFlowList[0].getJishuGet()+
						    cashFlowList[0].getQitaGet()}</td>
						    <td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">邮寄返款支出的现金</td>
						    <td>${cashFlowList[0].getFankuanPay()}</td>
						  	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">生产支出的现金</td>
						    <td>${cashFlowList[0].getShengchanPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						  
						    <td style="padding-left:60px;">支付的研发费用</td>
						    <td>${cashFlowList[0].getYanfaPay()}</td>
						    <td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的广告费用</td>
						    <td>${cashFlowList[0].getGuanggaoPay()}</td>
						    <td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的销售人员费用</td>
						    <td>${cashFlowList[0].getSalerPay()}</td>
						   	<td></td>
						  </tr>
						   </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的实体及网络销售中心费用</td>
						    <td>${cashFlowList[0].getSalescenterPay()+cashFlowList[0].getSalescenterWebPay()}</td>
						   	<td></td>
						  </tr>
						   </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的市场调研费用</td>
						    <td>${cashFlowList[0].getDiaoyanPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的货运的现金</td>
						    <td>${cashFlowList[0].getHuoyunPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的网络营销费用</td>
						    <td>${cashFlowList[0].getNetmarketPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的收入税</td>
						    <td>${cashFlowList[0].getTaxPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的利息费用</td>
						    <td>${cashFlowList[0].getLixiPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的技术授权费用</td>
						    <td>${cashFlowList[0].getJishuPay()}</td>
						   	<td></td>
						  </tr>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付其他与经营活动有关的现金</td>
						    <td>${cashFlowList[0].getQitaPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">经营活动产生的现金流出小计</td>
						    <td>${cashFlowList[0].getFankuanPay()+
						    cashFlowList[0].getShengchanPay()+
						    cashFlowList[0].getYanfaPay()+
						    cashFlowList[0].getGuanggaoPay()+
						    cashFlowList[0].getSalerPay()+
						    cashFlowList[0].getSalescenterPay()+
						    cashFlowList[0].getSalescenterWebPay()+
						    cashFlowList[0].getDiaoyanPay()+
						    cashFlowList[0].getHuoyunPay()+
						    cashFlowList[0].getNetmarketPay()+
						    cashFlowList[0].getTaxPay()+
						    cashFlowList[0].getLixiPay()+
						    cashFlowList[0].getJishuPay()+
						    cashFlowList[0].getQitaPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">经营活动产生的现金流量净额</td>
						    <td>
						    ${cashFlowList[0].getXiaoshouGet()+
						    cashFlowList[0].getLixiGet()
						    +cashFlowList[0].getJishuGet()+
						    cashFlowList[0].getQitaGet()-(cashFlowList[0].getFankuanPay()+
						    cashFlowList[0].getShengchanPay()+
						    cashFlowList[0].getYanfaPay()+
						    cashFlowList[0].getGuanggaoPay()+
						    cashFlowList[0].getSalerPay()+
						    cashFlowList[0].getSalescenterPay()+
						    cashFlowList[0].getSalescenterWebPay()+
						    cashFlowList[0].getDiaoyanPay()+
						    cashFlowList[0].getHuoyunPay()+
						    cashFlowList[0].getNetmarketPay()+
						    cashFlowList[0].getTaxPay()+
						    cashFlowList[0].getLixiPay()+
						    cashFlowList[0].getJishuPay()+
						    cashFlowList[0].getQitaPay())}
						    </td>
						   	<td></td>
						  </tr>
						  
						  <tr class="firstnav">
						    <td>二、投资活动产生的现金流量</td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">构建工厂固定产能支出的现金</td>
						    <td>${cashFlowList[0].getGongchangPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">投资活动现金流出小计</td>
						    <td>${cashFlowList[0].getGongchangPay()}</td>
						    <td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">投资活动产生的现金流量净额</td>
						    <td>${cashFlowList[0].getGongchangPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="firstnav">
						    <td>三、筹资活动产生的现金流量</td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">取得常规贷款收到的现金</td>
						    <td>${cashFlowList[0].getDaikuanNormalGet()}</td>
						    <td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">取得紧急贷款收到的现金</td>
						    <td>${cashFlowList[0].getDaikuanEmergyGet()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">提取三个月定期存款收到的现金</td>
						    <td>${cashFlowList[0].getCunkuanRegularGet()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">筹资活动现金流入小计</td>
						    <td>${cashFlowList[0].getDaikuanNormalGet()+
						    cashFlowList[0].getDaikuanEmergyGet()+
						    cashFlowList[0].getCunkuanRegularGet()}</td>
						    <td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">偿还常规贷款支出的现金</td>
						    <td>${cashFlowList[0].getDaikuanNormalPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">偿还紧急贷款支出的现金</td>
						    <td>${cashFlowList[0].getDaikuanEmergyPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">三个月定期存款支出的现金</td>
						    <td>${cashFlowList[0].getCunkuanRegularPay()}</td>
						   	<td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">投资活动现金流出小计</td>
						    <td>${cashFlowList[0].getDaikuanNormalPay()+
						    cashFlowList[0].getDaikuanNormalPay()+
						    cashFlowList[0].getCunkuanRegularPay()}</td>
						    <td></td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">筹资活动产生的现金流量净额</td>
						    <td>
						    ${cashFlowList[0].getDaikuanNormalGet()+
						    cashFlowList[0].getDaikuanEmergyGet()+
						    cashFlowList[0].getCunkuanRegularGet()-(cashFlowList[0].getDaikuanNormalPay()+
						    cashFlowList[0].getDaikuanEmergyPay()+
						    cashFlowList[0].getCunkuanRegularPay())}
						    </td>
						    <td></td>
						  </tr>
						  <tr class="firstnav">
						    <td>四、现金及现金等级物净增加额</td>
						    <td></td>
						    <td></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">+： 季初现金及现金等价物余额</td>
						    <td>${cashFlowList[0].getYuE()}</td>
						    <td></td>  
						    </tr>
						  </tbody>
						</table>
                </div>
            </div>
		
	    </div>
	    <div class="panel-footer"></div>
	</div>
</body>
</html>