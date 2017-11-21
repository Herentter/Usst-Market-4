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
						    <td><fmt:formatNumber value="${incomeStatementList[0].getYingYeTotalIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getYingYeTotalIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getYingYeTotalIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:50px;">营业收入</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getYingyeIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getYingyeIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getYingyeIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:50px;">利息收入</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getLixiIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getLixiIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getLixiIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						  <tr class="firstnav">
						    <td>营业总成本</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getYingYeTotalCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getYingYeTotalCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getYingYeTotalCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">营业成本</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getYingyeCost()} " pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getYingyeCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getYingyeCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">邮件返款</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getFankuan()}" pattern="#,#00.0"></fmt:formatNumber></td>
					     	<td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getFankuan()}" pattern="#,#00.0"></fmt:formatNumber></td>
					     	<td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getFankuan()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:50px;">研发投入</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getYanfa()} " pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getYanfa()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getYanfa()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">广告费用</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getGuanggao()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getGuanggao()}" pattern="#,#00.0"></fmt:formatNumber></td>
					     	<td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getGuanggao()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">销售人员费用</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getSalerCost()} " pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getSalerCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getSalerCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">实体及网络销售中心费用</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getSalescenterCost()+incomeStatementList[0].getSalescenterWebCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getSalescenterCost()+incomeStatementList[1].getSalescenterWebCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getSalescenterCost()+incomeStatementList[2].getSalescenterWebCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">市场调研报告</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getBaogao()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getBaogao()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getBaogao()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">货运</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getHuoyun()} " pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getHuoyun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getHuoyun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">库存持有成本</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getKucun()} " pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getKucun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getKucun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">过剩产能成本</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getExcessCapacity()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getExcessCapacity()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getExcessCapacity()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">折旧</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getZhejiu()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getZhejiu()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getZhejiu()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">网络营销费用</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getNetmarketCost()} " pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getNetmarketCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getNetmarketCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">利息费用</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getLixiCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getLixiCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getLixiCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						 <tr class="firstnav">
						    <td>一、营业利润（营业总收入-营业总成本）</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getYingYeTotalIncome()-incomeStatementList[0].getYingYeTotalCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getYingYeTotalIncome()-incomeStatementList[1].getYingYeTotalCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getYingYeTotalIncome()-incomeStatementList[2].getYingYeTotalCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr> 
						   <tr class="secondnav">
						    <td style="padding-left:10px;">+: &nbsp; &nbsp; &nbsp;   技术授权收入</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getTechIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getTechIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[1].getTechIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">其他营业外收入</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getQitaIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getQitaIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[1].getQitaIncome()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:10px;">-：&nbsp;&nbsp; &nbsp;  技术授权费用</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getTechCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getTechCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[1].getTechCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						   <tr class="secondnav">
						    <td style="padding-left:50px;">其他营业外支出</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getQitaCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getQitaCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[1].getQitaCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						  </tr>
						  <tr class="firstnav">
						    <td>二、利润总额</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getTotalLiRun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getTotalLiRun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getTotalLiRun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						     </tr>
						    <tr class="secondnav">
						    <td style="padding-left:10px;">-： &nbsp;&nbsp;&nbsp; 所得税费用</td>
						    <td> ${incomeStatementList[0].getTaxCost()} </td>
						    <td class="quarter2"><fmt:formatNumber value=" ${incomeStatementList1[1].getTaxCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value=" ${incomeStatementList1[2].getTaxCost()}" pattern="#,#00.0"></fmt:formatNumber></td>
						 
						  </tr>
						   <tr class="firstnav">
						    <td>三、净利润</td>
						    <td><fmt:formatNumber value="${incomeStatementList[0].getJingLiRun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter2"><fmt:formatNumber value="${incomeStatementList[1].getJingLiRun()}" pattern="#,#00.0"></fmt:formatNumber></td>
						    <td class="quarter3"><fmt:formatNumber value="${incomeStatementList[2].getJingLiRun()}" pattern="#,#00.0"></fmt:formatNumber></td>
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