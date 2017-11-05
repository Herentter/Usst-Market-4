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
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
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
          text-align:center;
        letter-spacing:155px;}
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

</head>

<body>
       <div class="panel panel-info">
	    <div class="panel-heading">
	        <h3 class="panel-title">资产负债表</h3>
	    </div>
	    <div class="panel-body" >
	    	<ul class="nav nav-tabs">
                <li><a href="#notice1" data-toggle="tab"> 课程介绍</a></li>
                <li class="active"><a href="#notice2" data-toggle="tab">决策界面</a></li>
            </ul>
            
            <div class="tab-content">
                <div class="tab-pane fade" id="notice1">
                	<div class="course_content">
						<div class="text1">
							当前季度的资产负债表提供了公司资产、负债、及股东权益等方面的财务信息。						</div>
                   	</div>
                   	<div class="right">
                   		<div class="right_title">
                   			<span><i class="fa fa-lightbulb-o"></i></span><label>决策小提示</label>
                   		</div>
                   		<div class="right_content">
                   			请确保现金账户的余额不低于 300,000，以便应对可能的突发问题。
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
						    <th >季度1</th>
						    <th class="quarter2">季度2</th>
						    <th class="quarter3">季度3</th>
						  </tr>
						</thead>
						<tbody>
						
						  <tr class="firstnav">
						    <td>流动资产：</td>
						    <td></td>
						    <td  class="quarter2"></td>
						    <td  class="quarter3"></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">货币资金</td>
						    <td> ${assertSheetList[0].getHuobi()}</td>
						    <td  class="quarter2"> ${assertSheetList[1].getHuobi()}</td>
						    <td  class="quarter3"> ${assertSheetList[2].getHuobi()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">三个月定期存款</td>
						    <td> ${assertSheetList[0].getCunkuan()}</td>
						    <td  class="quarter2"> ${assertSheetList[1].getCunkuan()}</td>
						    <td  class="quarter3"> ${assertSheetList[2].getCunkuan()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">存货</td>
						    <td>${assertSheetList[0].getCunhuo()}</td>
						    <td  class="quarter2">${assertSheetList[1].getCunhuo()}</td>
						    <td  class="quarter3">${assertSheetList[2].getCunhuo()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">流动资产合计</td>
						    <td>  ${assertSheetList[0].getLiuDongZiChan()}</td>
						    <td  class="quarter2">${assertSheetList[1].getLiuDongZiChan()}</td>
						    <td  class="quarter3">${assertSheetList[2].getLiuDongZiChan()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>非流动资产：</td>
						    <td></td>
						    <td  class="quarter2"></td>
						    <td  class="quarter3"></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">固定资产</td>
						    <td>${assertSheetList[0].getZichan()}</td>
						    <td  class="quarter2">${assertSheetList[1].getZichan()}</td>
						    <td  class="quarter3">${assertSheetList[2].getZichan()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">非流动资产合计</td>
						    <td>${assertSheetList[0].getZichan()}</td>
						    <td class="quarter2">${assertSheetList[1].getZichan()}</td>
						     <td class="quarter3">${assertSheetList[2].getZichan()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">资产总计</td>
						    <td>${assertSheetList[0].getTotalZiChan()}</td>
						    <td class="quarter2">${assertSheetList[1].getTotalZiChan()}</td>
						    <td class="quarter3">${assertSheetList[2].getTotalZiChan()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>流动负债：</td>
						    <td></td>
						    <td class="quarter2"></td>
						    <td class="quarter3"></td>
						  </tr>
						  
						  <tr class="secondnav">
						    <td style="padding-left:30px;">紧急贷款</td>
						    <td>${assertSheetList[0].getDaikuanEmergency()}</td>
						    <td class="quarter2">${assertSheetList[1].getDaikuanEmergency()}</td>
						    <td class="quarter3">${assertSheetList[2].getDaikuanEmergency()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">应付利息</td>
						    <td>${assertSheetList[0].getLixiPay()}</td>
						   	<td class="quarter2">${assertSheetList[1].getLixiPay()}</td>
						   	<td class="quarter3">${assertSheetList[2].getLixiPay()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">流动负债合计</td>
						    <td>${assertSheetList[0].getLiuDongFuzhai()}</td>
						    <td class="quarter2">${assertSheetList[1].getLiuDongFuzhai()}</td>
						    <td class="quarter3">${assertSheetList[2].getLiuDongFuzhai()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>非流动负债：</td>
						    <td></td>
						    <td class="quarter2"></td>
						    <td class="quarter3"></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">常规银行贷款</td>
						    <td>${assertSheetList[0].getDaikuanNormal()}</td>
						    <td class="quarter2">${assertSheetList[1].getDaikuanNormal()}</td>
						     <td class="quarter3">${assertSheetList[2].getDaikuanNormal()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">非流动负债合计</td>
						    <td>${assertSheetList[0].getDaikuanNormal()}</td>
						    <td class="quarter2">${assertSheetList[1].getDaikuanNormal()}</td>
						    <td class="quarter3">${assertSheetList[2].getDaikuanNormal()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">负债合总计</td>
						    <td>${assertSheetList[0].getTotalFuZhai()}</td>
						   	<td class="quarter2">${assertSheetList[1].getTotalFuZhai()}</td>
						   	<td class="quarter3">${assertSheetList[2].getTotalFuZhai()}</td>
						  </tr>
						  <tr class="firstnav">
						    <td>所有者权益：</td>
						    <td></td>
						    <td class="quarter2"></td>
						    <td class="quarter3"></td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">股本</td>
						    <td>${assertSheetList[0].getGuben()}</td>
						    <td class="quarter2">${assertSheetList[1].getGuben()}</td>
						    <td class="quarter3">${assertSheetList[2].getGuben()}</td>
						  </tr>
						  <tr class="secondnav">
						    <td style="padding-left:30px;">留存收益</td>
						    <td>${assertSheetList[0].getLiucun()}</td>
						    <td class="quarter2">${assertSheetList[1].getLiucun()}</td>
						    <td class="quarter3">${assertSheetList[2].getLiucun()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">所有者权益合计</td>
						    <td>${assertSheetList[0].getOwner()}</td>
						    <td class="quarter2">${assertSheetList[1].getOwner()}</td>
						    <td class="quarter3">${assertSheetList[2].getOwner()}</td>
						  </tr>
						  <tr class="thirdnav">
						    <td style="padding-left:120px;">负债和所有者权益总计</td>
						    <td>${assertSheetList[0].getOwnerAndFuZhai()}</td>
						   	<td class="quarter2">${assertSheetList[1].getOwnerAndFuZhai()}</td>
						   	<td class="quarter3">${assertSheetList[2].getOwnerAndFuZhai()}</td>
						  </tbody>
						</table>
                </div>
            </div>
	    </div>
	    <div class="panel-footer"></div>
	</div>
</body>
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
<script type="text/javascript" src="js/classIntroduction.js"></script>
</html>