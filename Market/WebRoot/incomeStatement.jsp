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
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<style type="text/css">
        body{
            width: 99%;
            margin:5px;
        }
        .firstnav,.thirdnav{
        	font-weight: bold;
        }
        .panel{
            margin: 0px;
        }
        .a{
          /* text-align:center; */
       		 /* letter-spacing:155px; */
        }
        b.{text-align:center;}
        
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
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
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
	        <h3 class="panel-title">利润表</h3>
	    </div>
	    <div class="panel-body">
	    	<ul class="nav nav-tabs">
                <li ><a href="#notice1" data-toggle="tab"> 课程介绍</a></li>
                <li class="active"><a href="#notice2" data-toggle="tab">决策界面</a></li>
            </ul>
            
            <div class="tab-content">
                <div class="tab-pane fade" id="notice1">
                	<div class="course_content">
						<div class="text1">
							当前季度的利润表记录了公司的季度销售收入、支出、净收入、及每股收益。						</div>
						
                   	</div>
                   	<div class="right">
                   		<div class="right_title">
                   			<span><i class="fa fa-lightbulb-o"></i></span><label>决策小提示</label>
                   		</div>
                   		<div class="right_content">
                   			在相应的决策界面，您会发现报表中的销售收入为零，这是因为公司还未进行销售。 直到第二季度您才会有销售收入。
                   		</div>
                   	</div>
                </div>
                <div class="tab-pane fade  in active" id="notice2">
                <label id="quarterFlag" value="${quarter }"></label>
                	<table class="table table-bordered table-hover table-striped">
		<!--悬停表格布局-->
						<thead>
						  <tr>
						    <th >项目</th>
						    <th>季度1</th>
						   	<th class="quarter2">季度2</th>
						   	<th class="quarter3">季度3</th>
						  </tr>
						</thead>
						<tbody>
						
						  <tr class="firstnav">
						    <td>营业总收入</td>
						    <td>${incomeStatementList[0].getYingYeTotalIncome()}</td>
						    <td class="quarter2">${incomeStatementList[1].getYingYeTotalIncome()}</td>
						    <td class="quarter3">${incomeStatementList[2].getYingYeTotalIncome()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:50px;">营业收入</td>
						    <td>${incomeStatementList[0].getYingyeIncome()}</td>
						    <td class="quarter2">${incomeStatementList[1].getYingyeIncome()}</td>
						    <td class="quarter3">${incomeStatementList[2].getYingyeIncome()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:50px;">利息收入</td>
						    <td>${incomeStatementList[0].getLixiIncome()}</td>
						    <td class="quarter2">${incomeStatementList[1].getLixiIncome()}</td>
						    <td class="quarter3">${incomeStatementList[2].getLixiIncome()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>营业总成本</td>
						    <td>${incomeStatementList[0].getYingYeTotalCost()}</td>
						    <td class="quarter2">${incomeStatementList[1].getYingYeTotalCost()}</td>
						    <td class="quarter3">${incomeStatementList[2].getYingYeTotalCost()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">营业成本</td>
						    <td>${incomeStatementList[0].getYingyeCost()} </td>
						    <td class="quarter2">${incomeStatementList[1].getYingyeCost()}</td>
						    <td class="quarter3">${incomeStatementList[2].getYingyeCost()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">邮件返款</td>
						    <td>${incomeStatementList[0].getFankuan()}</td>
					     	<td class="quarter2">${incomeStatementList[1].getFankuan()}</td>
					     	<td class="quarter3">${incomeStatementList[2].getFankuan()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:50px;">研发投入</td>
						    <td>${incomeStatementList[0].getYanfa()} </td>
						    <td class="quarter2">${incomeStatementList[1].getYanfa()} </td>
						    <td class="quarter3">${incomeStatementList[2].getYanfa()} </td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">广告费用</td>
						    <td>${incomeStatementList[0].getGuanggao()}</td>
						    <td class="quarter2">${incomeStatementList[1].getGuanggao()}</td>
					     	<td class="quarter3">${incomeStatementList[2].getGuanggao()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">销售人员费用</td>
						    <td>${incomeStatementList[0].getSalerCost()} </td>
						    <td class="quarter2">${incomeStatementList[1].getSalerCost()}</td>
						    <td class="quarter3">${incomeStatementList[2].getSalerCost()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">实体及网络销售中心费用</td>
						    <td>${incomeStatementList[0].getSalescenterCost()+incomeStatementList[0].getSalescenterWebCost()}</td>
						    <td class="quarter2">${incomeStatementList[1].getSalescenterCost()+incomeStatementList[1].getSalescenterWebCost()}</td>
						    <td class="quarter3">${incomeStatementList[2].getSalescenterCost()+incomeStatementList[2].getSalescenterWebCost()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">市场调研报告</td>
						    <td>${incomeStatementList[0].getBaogao()}</td>
						    <td class="quarter2">${incomeStatementList[1].getBaogao()}</td>
						    <td class="quarter3">${incomeStatementList[2].getBaogao()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">货运</td>
						    <td>${incomeStatementList[0].getHuoyun()} </td>
						    <td class="quarter2">${incomeStatementList[1].getHuoyun()} </td>
						    <td class="quarter3">${incomeStatementList[2].getHuoyun()} </td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">库存持有成本</td>
						    <td>${incomeStatementList[0].getKucun()} </td>
						    <td class="quarter2">${incomeStatementList[1].getKucun()} </td>
						    <td class="quarter3">${incomeStatementList[2].getKucun()} </td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">过剩产能成本</td>
						    <td>${incomeStatementList[0].getExcessCapacity()}</td>
						    <td class="quarter2">${incomeStatementList[1].getExcessCapacity()}</td>
						    <td class="quarter3">${incomeStatementList[2].getExcessCapacity()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">折旧</td>
						    <td>${incomeStatementList[0].getZhejiu()}</td>
						    <td class="quarter2">${incomeStatementList[1].getZhejiu()}</td>
						    <td class="quarter3">${incomeStatementList[2].getZhejiu()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">网络营销费用</td>
						    <td>${incomeStatementList[0].getNetmarketCost()} </td>
						    <td class="quarter2">${incomeStatementList[1].getNetmarketCost()}</td>
						    <td class="quarter3">${incomeStatementList[2].getNetmarketCost()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">利息费用</td>
						    <td>${incomeStatementList[0].getLixiCost()}</td>
						    <td class="quarter2">${incomeStatementList[1].getLixiCost()}</td>
						    <td class="quarter3">${incomeStatementList[2].getLixiCost()}</td>
						  </tr>
						 <tr class="firstnav">
						    <td>一、营业利润（营业总收入-营业总成本）</td>
						    <td>${incomeStatementList[0].getYingYeTotalIncome()-incomeStatementList[0].getYingYeTotalCost()}</td>
						    <td class="quarter2">${incomeStatementList[1].getYingYeTotalIncome()-incomeStatementList[1].getYingYeTotalCost()}</td>
						    <td class="quarter3">${incomeStatementList[2].getYingYeTotalIncome()-incomeStatementList[2].getYingYeTotalCost()}</td>
						  </tr> 
						   <tr class="secondnav">
						    <td style="padding-left:10px;">+: &nbsp; &nbsp; &nbsp;   技术授权收入</td>
						    <td>${incomeStatementList[0].getTechIncome()} </td>
						    <td class="quarter2">${incomeStatementList[1].getTechIncome()} </td>
						    <td class="quarter3">${incomeStatementList[1].getTechIncome()} </td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">其他营业外收入</td>
						    <td>${incomeStatementList[0].getQitaIncome()}</td>
						    <td class="quarter2">${incomeStatementList[1].getQitaIncome()}</td>
						    <td class="quarter3">${incomeStatementList[1].getQitaIncome()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:10px;">-：&nbsp;&nbsp; &nbsp;  技术授权费用</td>
						    <td>${incomeStatementList[0].getTechCost()} </td>
						    <td class="quarter2">${incomeStatementList[1].getTechCost()}</td>
						    <td class="quarter3">${incomeStatementList[1].getTechCost()}</td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">其他营业外支出</td>
						    <td>${incomeStatementList[0].getQitaCost()}</td>
						    <td class="quarter2">${incomeStatementList[1].getQitaCost()}</td>
						    <td class="quarter3">${incomeStatementList[1].getQitaCost()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>二、利润总额</td>
						    <td>${incomeStatementList[0].getTotalLiRun()}</td>
						    <td class="quarter2">${incomeStatementList[1].getTotalLiRun()}</td>
						    <td class="quarter3">${incomeStatementList[2].getTotalLiRun()}</td>
						     </tr>
						    <tr class="secondnav">
						    <td style="padding-left:10px;">-： &nbsp;&nbsp;&nbsp; 所得税费用</td>
						    <td> ${incomeStatementList[0].getTaxCost()} </td>
						    <td class="quarter2"> ${incomeStatementList1[1].getTaxCost()} </td>
						    <td class="quarter3"> ${incomeStatementList1[2].getTaxCost()} </td>
						 
						  </tr>
						   <tr class="firstnav">
						    <td>三、净利润</td>
						    <td>${incomeStatementList[0].getJingLiRun()}</td>
						    <td class="quarter2">${incomeStatementList[1].getJingLiRun()}</td>
						    <td class="quarter3">${incomeStatementList[2].getJingLiRun()}</td>
						       </tr>
						        <tr class="firstnav">
						      	<td>四、每股收益</td>
						      	<td></td>
					       		<td class="quarter2"></td>
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