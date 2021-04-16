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
</head>
<body>
<%@include file="../common/head1.jsp" %>

<div class="login_step">
    注册步骤: 1.填写信息 > <span class="red_bold">2.验证邮箱</span> > 3.注册成功
</div>
<form action="${path}/user/order_updateStatus" method="post" onsubmit="return check()">
    <script type="text/javascript">                    function check() {
        var nn = document.getElementsByClassName('inputgri');
        for (var i = 0; i < nn.length; i++) {
            if (!nn[i].value) {
                alert("有空值，请检查之后在重新提交");
                return false;
            }
        }                       /* var b = window.confirm("请确认提交是否提交表单");                        if (b) {*/
        return true;                      /*  } else {                            return false;                        }*/
    }                </script>
    <div class="validate_email">
        <h2>感谢您注册当当网！现在请按以下步骤完成您的注册!</h2>
        <div class="look_email">
            <h4>第一步：查看您的电子邮箱</h4>
            <div class="mess reduce_h">
                我们给您发送了验证邮件，邮件地址为： <span class="red"><span id="lblEmail">${email}</span>
					</span> <span class="t1"> 请登录您的邮箱收信。
            </div>
            <h4>第二步：输入验证码</h4>
            <h1><span style="color: red;font-family:微软雅黑">${code}</span></h1>
            <div class="mess">
                <span class="write_in">输入您收到邮件中的验证码：</span> <input name="code"
                                                                   type="text" id="validatecode" class="yzm_text"/>
                <input
                        class="finsh" type="submit" value="完 成" id="Button1"/>
                <h1>
                    <span style="color: red;font-family:微软雅黑">${errorMsg}</span>
                </h1>
                <span id="errorMsg" class="no_right"></span>
            </div>
        </div>
    </div>
</form>
<%@include file="../common/foot1.jsp" %>
</body>
</html>

