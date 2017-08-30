<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath %>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>竞赛名称</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/strategy.css">
<style type="text/css">
	.panel-body{
		min-height:400px;
		
	}
</style>


</head>
<body>
	<div id="nav44">
		<div class="panel panel-info">
            <div class="panel-heading">
                <span>竞赛名称</span>
            </div>
            
            <div class="panel-body">
            
            	<input id="competitionId" type="hidden" value="${competition.id }" name="id"/>
            	<label>当前竞赛名称：</label>
            	<input id="competitionName" class="form-control" style="width: 200px" name="name" value="${competition.name }" disabled="disabled"/><br/>
            	<input type="button" class="btn btn-sm btn-default" onclick="modify()" value="修改" />
            	<input type="button" class="btn btn-sm btn-default" onclick="modifyCompetitionNameSubmit()" value="确认" style="display: none"/>
            	<input type="button" class="btn btn-sm btn-default" onclick="cancel()" value="取消" style="display: none"/>
            
            </div>
        	
        	<div class="panel-footer"></div>    
    	</div>
	</div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">
	function modify(){
		$("#competitionName").removeAttr("disabled");
		$("[value='确认']").css("display","inline");
		$("[value='取消']").css("display","inline");
		$("[value='修改']").css("display","none");
	}
	
	function modifyCompetitionNameSubmit(){
		var params={};
		params.id=$("#competitionId").val();
		params.name=$("#competitionName").val();
		if($("#competitionName").val()!=null && $("#competitionName").val()!=""){
			$.ajax({
				type:'post',
				url:"teacherTool/modifyCompetitionName.do",
				data:params,
				success: function(data){
						
				}
			});
			$("#competitionName").attr("disabled","false");
			alert("竞赛名称修改成功！");
			$("[value='确认']").css("display","none");
			$("[value='取消']").css("display","none");
			$("[value='修改']").css("display","inline");
		}else{
			alert("竞赛名称不能为空！");
		}
	}
	
	function cancel(){
		$("#competitionName").attr("disabled","false");
		$("[value='确认']").css("display","none");
		$("[value='取消']").css("display","none");
		$("[value='修改']").css("display","inline");
	}
</script>
</body>
</html>