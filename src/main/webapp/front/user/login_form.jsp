<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>登录 - 当当网</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${path }/front/css/login.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path }/front/css/page_bottom.css" rel="stylesheet"
          type="text/css"/>

</head>
<body>


<%@include file="../common/head1.jsp" %>

<div class="enter_part">

    <%@include file="../common/introduce.jsp" %>

    <div class="enter_in">
        <div class="bj_top"></div>
        <div class="center">
            <div style="height: 30px; padding: 5px; color: red"
                 id="divErrorMssage"></div>
            <div class="main">
                <h3>登录当当网</h3>

                <form method="post" action="${path}/user/login_loginAction"
                      id="ctl00">

                    <ul>
                        <li><span>请输入Email地址：</span> <input type="text" name="name"
                                                            id="txtEmail" class="textbox"/></li>
                        <li><span class="blank">密码：</span> <input type="password"
                                                                  name="password" id="txtPassword" class="textbox"/>
                        </li>
                        <li><input type="submit" id="btnSignCheck"
                                   class="button_enter" value="登 录"/></li>
                        <li><h1>
                            <span style="color: red;font-family:微软雅黑">${errorMsg}</span>
                        </h1></li>
                    </ul>
                    <input type="hidden" name="uri" value="${uri}"/>
                </form>
            </div>
            <div class="user_new">
                <p>您还不是当当网用户？</p>
                <p class="set_up">
                    <a href="${path}/front/user/register_form.jsp">创建一个新用户&gt;&gt;</a>
                </p>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/foot1.jsp" %>

</body>
</html>

