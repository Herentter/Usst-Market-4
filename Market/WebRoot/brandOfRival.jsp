<%--
  Created by IntelliJ IDEA.
  User: 陈立阳
  Date: 2017/10/15
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <style type="text/css">
        body {
            width: 99%;
            margin: 5px;
        }

        .panel {
            margin: 0px;
        }

        #notice1 {
            min-height: 420px;
        }

        .course_content {
            border: 1px solid #0ff;
            margin-top: 10px;
            padding: 20px;
            min-height: 220px;
            font-size: 14px;
            letter-spacing: 1px;
        }

        .left {
            /* border:1px solid blue; */
            width: 450px;
            padding: 20px;
            float: left;
            background: #eee;
            margin: 10px 0 0 2px;
            min-height: 220px;
        }

        .left_title span i {
            color: #009;
            font-size: 18px;
            margin-right: 6px;
        }

        .right {
            /* border:1px solid blue; */
            width: 400px;
            padding: 20px;
            float: left;
            background: #abcdef;
            margin: 10px 0 0 100px;
            min-height: 120px;
        }

        .right_title span i {
            color: red;
            font-size: 22px;
            margin-right: 6px;
        }

        .text0 {
            margin-left: 30px;
            margin-top: 10px;
        }

        .text1 {
            text-indent: 30px;
            margin-top: 10px;
        }

        .text2 {
            margin-left: 30px;
            margin-top: 25px;
        }

        .left_content li {
            margin-top: 5px;
        }

        #notice2 .left hr {
            margin: 0px;
            border-top: 1px solid #acbad4;
        }

        .top {
            background-color: #acbad4;
        }

        .notice2-left {
            display: inline-block;
            background: #eee;
        }

        .notice2-left ul li {
            list-style: none;
        }

        .notice2-left hr {
            margin: 0px;
        }


    </style>
</head>
<body>
<div class="panel panel-info">
    <div class="panel-heading">竞争对手的品牌</div>
    <div class="panel-body">
        <ul class="nav nav-tabs">
            <li><a href="#notice1" data-toggle="tab"> 课程介绍</a></li>
            <li class="active"><a href="#notice2" data-toggle="tab">决策界面</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane fade in " id="notice1">
                <div class="course_content">
                    <div class="text1">
                        作为商业竞争的一员，评估竞争对手的品牌设计是明智之举。
                    </div>
                </div>
                <div class="left">
                    <div class="left_title">
                        <span><i class="fa fa-tasks"></i></span><label>你的任务</label>
                    </div>
                    <div class="left_content">
                        <ul>
                            <li>请务必查看在您的目标市场上评价最高的品牌。 将其与自己的品牌进行比较，以判断市场更青睐哪些功能特性。 如果分数最高的品牌特别出色，您甚至可以直接利用该品牌的设计。</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade in active" id="notice2">
                <form id="hiddenForm" action="" method="post">
                    <c:forEach items="${brandOfRival}" var="bor">
                        <div style="float: left;margin-left: 30px">
                            <div class="notice2-left">
                                <input name="no" value="${bor.key}" class="box1" type="checkbox"
                                       onclick="box1(this)"
                                       <c:if test="${bor.key == flag}">checked</c:if>> ${bor.key}
                            </div>
                            <ul style="list-style: none">
                                <c:forEach items="${bor.value}" var="brandName">
                                    <li>${brandName}</li>
                                </c:forEach>
                            </ul>
                        </div>
                    </c:forEach>
                </form>
                <hr style="filter: alpha(opacity=100,finishopacity=0,style=3)" width="100%" color=#987cb9 SIZE=3>
                <div class="body">
                    <!-- 默认情况下显示所有信息 -->
                    <c:forEach items="${brandDetail}" var="bd">
                        <div class="notice2-left">
                                ${bd.key}
                        </div>
                        <ul>
                            <c:forEach items="${bd.value}" var="detail">
                                ${detail}
                            </c:forEach>
                        </ul>
                    </c:forEach>
                </div>
                <div class="body">
                    <!-- 显示某个公司的产品 -->
                    <c:forEach items="${companyBrand}" var="cb">
                        <div class="notice2-left">
                                ${cb.key}
                        </div>
                        <ul>
                            <c:forEach items="${cb.value}" var="detail">
                                ${detail}
                            </c:forEach>
                        </ul>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="main" style="width: 600px;height:400px;"></div>
        <div class="panel-footer"></div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
    function box1(box) {
        $($(box)).each(function () {
            //顶层div（class为top）
            var topDiv = $(this).parents(".checkbox").parents(".notice2-left").parents(".top");

            //选中后显示当前产品信息，让默认显示的信息隐藏
            $(".body").addClass("hidden");

            //.notice2-left的个数
            var divNum = $(topDiv).children().length;

            //当前div下面无序列表中元素的个数
            var box2Num = $(this).parents(".checkbox").parents(".notice2-left").find(".box2").length;

            //控制局部全选和全不选
            if ($(this).attr("name") == "no") {
                $(this).attr("name", "yes");
                for (var i = 0; i < box2Num; i++) {
                    $(this).parents(".checkbox").parents(".notice2-left").find(".box2").eq(i).prop("checked", true);
                }
            } else {
                $(this).attr("name", "no");
                for (var i = 0; i < box2Num; i++) {
                    $(this).parents(".checkbox").parents(".notice2-left").find(".box2").eq(i).prop("checked", false);
                }
            }

            //当前选择的公司名
            var companyName = $(this).val();
            //将当前选中的公司名通过隐藏的form表单提交到后台(将name属性设置为companyName)
            $("#hiddenForm").attr("action", "brandDetail.do?companyName=" + companyName);
            $("#hiddenForm").submit();
        });
    }

    function box2(box) {

    }
</script>
</html>