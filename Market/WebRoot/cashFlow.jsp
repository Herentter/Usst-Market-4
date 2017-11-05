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
<script type="text/javascript">
	$(function(){
		var quarter=$("#quarterFlag").attr("value");
		if(quarter==1){
			$(".quarter2").hide();
			$(".quarter3").hide();
		}else if(quarter==2){
			$(".quarter3").hide();
		}
	})
</script>
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
                	<label id="quarterFlag" value="${quarter }"></label>
                	<table class="table table-bordered table-hover table-striped">
						<thead>
						  <tr>
						    <th>项目</th>
						    <th>季度1</th>
						   	<th class="quarter2">季度2</th>
						   	<th class="quarter3">季度3</th>
						  </tr>
						</thead>
						<tbody>
						  <tr class="firstnav">
						    <td>一、经营活动产生的现金流量</td>
						    <td></td>
						    <td class="quarter2"></td>
						    <td class="quarter3"></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">销售商品收到的现金</td>
						    <td>${cashFlowList[0].getXiaoshouGet()}</td>
						   	<td class="quarter2">${cashFlowList[1].getXiaoshouGet()}</td>
						   	<td class="quarter3">${cashFlowList[2].getXiaoshouGet()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">收取利息的现金</td>
						    <td>${cashFlowList[0].getLixiGet()}</td>
						   	<td class="quarter2">${cashFlowList[1].getLixiGet()}</td>
						   	<td class="quarter3">${cashFlowList[2].getLixiGet()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">收取利息授权的现金</td>
						    <td>${cashFlowList[0].getJishuGet()}</td>
						   	<td class="quarter2">${cashFlowList[1].getJishuGet()}</td>
						   	<td class="quarter3">${cashFlowList[2].getJishuGet()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:60px;">收到其他与经营活动有关的现金</td>
						    <td>${cashFlowList[0].getQitaGet()}</td>
						    <td class="quarter2">${cashFlowList[1].getQitaGet()}</td>
						    <td class="quarter3">${cashFlowList[2].getQitaGet()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">经营活动现金流入小计</td>
						    <td>${cashFlowList[0].getXianJinGet()}</td>
						    <td class="quarter2">${cashFlowList[1].getXianJinGet()}</td>
						    <td class="quarter3">${cashFlowList[2].getXianJinGet()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">邮寄返款支出的现金</td>
						    <td>${cashFlowList[0].getFankuanPay()}</td>
						  	<td class="quarter2">${cashFlowList[1].getFankuanPay()}</td>
						  	<td class="quarter3">${cashFlowList[2].getFankuanPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">生产支出的现金</td>
						    <td>${cashFlowList[0].getShengchanPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getShengchanPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getShengchanPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的研发费用</td>
						    <td>${cashFlowList[0].getYanfaPay()}</td>
						    <td class="quarter2">${cashFlowList[1].getYanfaPay()}</td>
						    <td class="quarter3">${cashFlowList[2].getYanfaPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的广告费用</td>
						    <td>${cashFlowList[0].getGuanggaoPay()}</td>
						    <td class="quarter2">${cashFlowList[1].getGuanggaoPay()}</td>
						    <td class="quarter3">${cashFlowList[2].getGuanggaoPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的销售人员费用</td>
						    <td>${cashFlowList[0].getSalerPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getSalerPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getSalerPay()}</td>
						  </tr>
						   </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的实体及网络销售中心费用</td>
						    <td>${cashFlowList[0].getSalescenterPay()+cashFlowList[0].getSalescenterWebPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getSalescenterPay()+cashFlowList[1].getSalescenterWebPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getSalescenterPay()+cashFlowList[2].getSalescenterWebPay()}</td>
						  </tr>
						   </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的市场调研费用</td>
						    <td>${cashFlowList[0].getDiaoyanPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getDiaoyanPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getDiaoyanPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的货运的现金</td>
						    <td>${cashFlowList[0].getHuoyunPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getHuoyunPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getHuoyunPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的库存费用</td>
						    <td>${cashFlowList[0].getKucunPay()}</td>
					   	 	<td class="quarter2">${cashFlowList[1].getKucunPay()}</td>
					   	 	<td class="quarter3">${cashFlowList[2].getKucunPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的网络营销费用</td>
						    <td>${cashFlowList[0].getNetmarketPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getNetmarketPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getNetmarketPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的收入税</td>
						    <td>${cashFlowList[0].getTaxPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getTaxPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getTaxPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的利息费用</td>
						    <td>${cashFlowList[0].getLixiPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getLixiPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getLixiPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付的技术授权费用</td>
						    <td>${cashFlowList[0].getJishuPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getJishuPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getJishuPay()}</td>
						  </tr>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">支付其他与经营活动有关的现金</td>
						    <td>${cashFlowList[0].getQitaPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getQitaPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getQitaPay()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">经营活动产生的现金流出小计</td>
						    <td>${cashFlowList[0].getXianJinPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getXianJinPay()}</td>
						    <td class="quarter3">${cashFlowList[2].getXianJinPay()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">经营活动产生的现金流量净额</td>
						    <td>${cashFlowList[0].getXianJinGet()-cashFlowList[0].getXianJinPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getXianJinGet()-cashFlowList[1].getXianJinPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getXianJinGet()-cashFlowList[2].getXianJinPay()}</td>
						  </tr>
						  
						  <tr class="firstnav">
						    <td>二、投资活动产生的现金流量</td>
						    <td></td>
						    <td class="quarter2"></td>
						    <td class="quarter3"></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">构建工厂固定产能支出的现金</td>
						    <td>${cashFlowList[0].getGongchangPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getGongchangPay()}</td>
					   		<td class="quarter3">${cashFlowList[2].getGongchangPay()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">投资活动现金流出小计</td>
						    <td>${cashFlowList[0].getGongchangPay()}</td>
						    <td class="quarter2">${cashFlowList[1].getGongchangPay()}</td>
						    <td class="quarter3">${cashFlowList[2].getGongchangPay()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">投资活动产生的现金流量净额</td>
						    <td>${cashFlowList[0].getGongchangPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getGongchangPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getGongchangPay()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>三、筹资活动产生的现金流量</td>
						    <td></td>
						    <td class="quarter2"></td>
						    <td class="quarter3"></td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">取得常规贷款收到的现金</td>
						    <td>${cashFlowList[0].getDaikuanNormalGet()}</td>
						    <td class="quarter2">${cashFlowList[1].getDaikuanNormalGet()}</td>
						    <td class="quarter3">${cashFlowList[2].getDaikuanNormalGet()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">取得紧急贷款收到的现金</td>
						    <td>${cashFlowList[0].getDaikuanEmergyGet()}</td>
						   	<td class="quarter2">${cashFlowList[1].getDaikuanEmergyGet()}</td>
						   	<td class="quarter3">${cashFlowList[2].getDaikuanEmergyGet()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">提取三个月定期存款收到的现金</td>
						    <td>${cashFlowList[0].getCunkuanRegularGet()}</td>
						   	<td class="quarter2">${cashFlowList[1].getCunkuanRegularGet()}</td>
						   	<td class="quarter3">${cashFlowList[2].getCunkuanRegularGet()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">筹资活动现金流入小计</td>
						    <td>${cashFlowList[0].getChouZiGet()}</td>
						    <td class="quarter2">${cashFlowList[1].getChouZiGet()}</td>
						    <td class="quarter3">${cashFlowList[2].getChouZiGet()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">偿还常规贷款支出的现金</td>
						    <td>${cashFlowList[0].getDaikuanNormalPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getDaikuanNormalPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getDaikuanNormalPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">偿还紧急贷款支出的现金</td>
						    <td>${cashFlowList[0].getDaikuanEmergyPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getDaikuanEmergyPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getDaikuanEmergyPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:60px;">三个月定期存款支出的现金</td>
						    <td>${cashFlowList[0].getCunkuanRegularPay()}</td>
						   	<td class="quarter2">${cashFlowList[1].getCunkuanRegularPay()}</td>
						   	<td class="quarter3">${cashFlowList[2].getCunkuanRegularPay()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">投资活动现金流出小计</td>
						    <td>${cashFlowList[0].getChouZiPay()}</td>
						    <td class="quarter2">${cashFlowList[1].getChouZiPay()}</td>
						    <td class="quarter3">${cashFlowList[2].getChouZiPay()}</td>
						  </tr>
						  <tr class="secondsubnav">
						    <td style="padding-left:35px;">筹资活动产生的现金流量净额</td>
						    <td>${cashFlowList[0].getChouZiGet()-cashFlowList[0].getChouZiPay()}</td>
						    <td class="quarter2">${cashFlowList[1].getChouZiGet()-cashFlowList[1].getChouZiPay()}</td>
						    <td class="quarter3">${cashFlowList[2].getChouZiGet()-cashFlowList[2].getChouZiPay()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>四、现金及现金等级物净增加额</td>
						    <td></td>
						    <td class="quarter2"></td>
						    <td class="quarter3"></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">+： 季初现金及现金等价物余额</td>
						    <td>${cashFlowList[0].getYuE()}</td>
						    <td class="quarter2">${cashFlowList[1].getYuE()}</td>
						    <td class="quarter3">${cashFlowList[2].getYuE()}</td>  
						    </tr>
						  </tbody>
						</table>
                </div>
            </div>
		
	    </div>
	    <div class="panel-footer"></div>
	</div>
	<script type="text/javascript" src="js/classIntroduction.js"></script>
</body>
</html>