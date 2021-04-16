<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>用户注册 - 当当网</title>
    <link href="${path }/front/css/login.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path }/front/css/page_bottom.css" rel="stylesheet"
          type="text/css"/>
    <script src="${path}/front/js/jquery-1.8.3.min.js"></script>
    <script>
        var count = 6;
        var time = function () {
            count--;
            if (count == 0) {
                window.location.href = "${path }/fmain/fmain_showAllInformation";
            } else {
                $("#aa").html(count);
                setTimeout(time, 1000);
            }
        };
        time();
    </script>
</head>
<body>
<%@include file="../common/head1.jsp" %>
<div class="login_step">
    注册步骤: 1.填写信息 > 2.验证邮箱 > <span class="red_bold">3.注册成功</span>
</div>


<div class="login_success">
    <div class="login_bj">
        <div class="succ">
            <img
                    src="${pageContext.request.contextPath}/front/images/login_success.jpg"/>
        </div>
        <h5>${nickname}，欢迎加入当当网</h5>
        <h6>请牢记您的登录邮件地址：${email }</h6>

        <ul>
            <li class="nobj">您现在可以：还有<strong><font color="red"
                                                   id="aa"></font></strong>秒,回到首页！！！
            </li>
            <li>进入“ <a href="#">我的当当</a>”查看并管理您的个人信息
            </li>
        </ul>
        <ul>

            <li><a href="${path }/fmain/fmain_showAllInformation">继续浏览并选购商品</a>
            </li>
        </ul>
    </div>
</div>

<%@include file="../common/foot1.jsp" %>
</body>
</html>

