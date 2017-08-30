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
<style type="text/css">
        body{
            width: 99%;
            margin:4px;
        }
        .firstnav,.secondsubnav{
        	font-weight: bold;
        }
        .panel{
            margin: 0px;
        }
</style>
</head>
    <body>
	<div class="panel panel-info">
	    <div class="panel-heading">
	        <h3 class="panel-title">现金流表</h3>
	    </div>
	    <div class="panel-body">
		<table class="table table-bordered table-hover table-striped">
		<!--悬停表格布局-->
		  <thead>
		    <tr>
		      <th>项目</th>
		      <th>本年度</th>
		      <th>上年同期</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr class="firstnav">
		      <td>一、经营活动产生的现金流量</td>
		      <td>Bangalore</td>
		      <td>560001</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">销售商品、提供劳务收到的现金</td>
		      <td>Mumbai</td>
		      <td>400003</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">收到的税费返还</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">收到其他与经营活动有关的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondsubnav">
		      <td style="padding-left:30px;">经营活动现金流入小计</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">购买商品、接受劳务支付的现金</td>
		      <td>Mumbai</td>
		      <td>400003</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">支付给职工以及为职工支付的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">支付的各项税费</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">支付其他与经营活动有关的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondsubnav">
		      <td style="padding-left:30px;">经营活动现金流出小计</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondsubnav">
		      <td style="padding-left:30px;">经营活动产生的现金流量净额</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    
		    <tr class="firstnav">
		      <td>二、投资活动产生的现金流量</td>
		      <td>Bangalore</td>
		      <td>560001</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">收回投资收到的现金</td>
		      <td>Mumbai</td>
		      <td>400003</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">取得投资收益所收到的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">处置固定资产、无形资产和其他长期资产收回的现金净额</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">处置子公司及其他营业单位收到的现金净额</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">收到其他与投资活动有关的现金</td>
		      <td>Mumbai</td>
		      <td>400003</td>
		    </tr>
		    <tr class="secondsubnav">
		      <td style="padding-left:30px;">投资活动现金流入小计</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">购建固定资产、无形资产和其他长期资产支付的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">投资支付的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">取得子公司及其他营业单位支付的现金净额</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">支付其他与投资活动有关的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondsubnav">
		      <td style="padding-left:30px;">投资活动现金流出小计</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondsubnav">
		      <td style="padding-left:30px;">投资活动产生的现金流量净额</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>

		    <tr class="firstnav">
		      <td>三、筹资活动产生的现金流量</td>
		      <td>Bangalore</td>
		      <td>560001</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">吸收投资收到的现金</td>
		      <td>Mumbai</td>
		      <td>400003</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">其中：子公司吸收少数股东投资收到的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">取得借款收到的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">发行债券收到的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="secondnav">
		      <td style="padding-left:30px;">收到其他与筹资活动有关的现金</td>
		      <td>Mumbai</td>
		      <td>400003</td>
		    </tr>
		    <tr class="secondsubnav">
		      <td style="padding-left:30px;">筹资活动现金流入小计</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		     <tr class="thirdnav">
		      <td style="padding-left:60px;">偿还债务支付的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">分配股利、利润或偿付利息支付的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">其中：子公司支付给少数股东的股利、利润</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		    <tr class="thirdnav">
		      <td style="padding-left:60px;">支付其他与筹资活动有关的现金</td>
		      <td>Pune</td>
		      <td>411027</td>
		    </tr>
		  </tbody>
		</table>
	    </div>
	    <div class="panel-footer"></div>
	</div>
</body>
</html>