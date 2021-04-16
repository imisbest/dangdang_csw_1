<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>当当图书 – 全球最大的中文网上书店</title>
    <link href="${path }/front/css/book.css" rel="stylesheet" type="text/css"/>
    <link href="${path }/front/css/second.css" rel="stylesheet" type="text/css"/>
    <link href="${path }/front/css/secBook_Show.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".aa").mouseover(function (e) {
                //alert("鼠标移入");
                //1.获取原图片大小
                var width = this.width * 2;
                var height = this.height * 2;
                //2.获取鼠标的坐标
                var x = e.pageX;
                var y = e.pageY;
                //3.创建div
                var div = $("<div id='bigDiv'/>").css({
                    "display": "none",
                    "position": "absolute",
                    "width": width,
                    "height": height,
                    "top": y + 15,
                    "left": x + 15,
                    "border": "2px solid yellow"
                });
                //4.创建img
                var img = $("<img/>").css({
                    "width": width,
                    "height": height
                }).attr({
                    "src": this.src
                });
                //5.将img放入div
                div.append(img);
                //6.将div放入body
                $("body").append(div);
                div.show(1000);
            }).mousemove(function (e) {
                //alert("鼠标移动");
                //1.获取鼠标的坐标
                var x = e.pageX;
                var y = e.pageY;
                //2.将鼠标位置赋值给div
                $("#bigDiv").css({
                    "top": y + 15,
                    "left": x + 15
                });
            }).mouseout(function (e) {
                //alert("鼠标移出");
                $("#bigDiv").remove();
            });
        });
    </script>
</head>
<body>
&nbsp;
<!-- 头部开始 -->
<%@include file="./common/head.jsp" %>
<!-- 头部结束 -->
<div style="width: 962px; margin: auto;">
    <a href="#" target="_blank"><img
            src="${path }/front/images/default/book_banner_081203.jpg" border="0"/> </a>
</div>

<div class="book">

    <!--左栏开始-->
    <div id="left" class="book_left">
        <%@include file="./main/category.jsp" %>
    </div>
    <!--左栏结束-->


    <!--中栏开始-->
    <div class="book_center">

        <!--推荐图书开始-->
        <div class=second_c_border1 id="recommend">
            <%@include file="../main/recommend.jsp" %>
        </div>

        <!--推荐图书结束-->

        <!--热销图书开始-->
        <div class="book_c_border2" id="hot">
            <%@include file="../main/hot.jsp" %>
        </div>
        <!--热销图书结束-->

        <!--最新上架图书开始-->
        <div class="book_c_border2" id="new">
            <%@include file="../main/new.jsp" %>
        </div>

        <!--最新上架图书结束-->

        <div class="clear"></div>
    </div>
    <!--中栏结束-->


    <!--右栏开始-->
    <div class="book_right">
        <div class="book_r_border2" id="__XinShuReMai">
            <div class="book_r_b2_1x" id="new_bang">
                <div id="NewProduct_1_o_t" onmouseover="">
                    <%@include file="../main/hotBoard.jsp" %>
                </div>
            </div>
        </div>
    </div>
    <!--右栏结束-->
    <div class="clear"></div>
</div>

<!--页尾开始 -->
<%@include file="../common/foot.jsp" %>
<!--页尾结束 -->
</body>
</html>
