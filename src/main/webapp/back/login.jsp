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
    <link href="${path}/back/css/login.css" rel="stylesheet" type="text/css"/>
    <link href="${path}/back/css/pop_cheat.css" rel="stylesheet"
          type="text/css"/>
    <script type="text/javascript" src="${path}/back/js/jquery-3.3.1.js"></script>

</head>
<body>
<div class="head">
    <a href="http://www.dangdang.com"> <img
            src="${path}/back/images/signin_logo.png"/></a>
    <div class="improve">
        <img src="${path}/back/images/bz.jpg" width="178" height="61"/>
    </div>
</div>

<div class="login_bg" style="width:960px; margin:0 auto;">
    <div id="J_cheatProofTop" class="new_tip">
        <div id="component_2747856"></div>
        <div>
            为保障账户安全，请勿设置与邮箱及其他网站相同的账户登录密码或支付密码，<a href="javascript:;">谨防诈骗</a>！
        </div>
    </div>
    <div class="set_area clearfix">
        <div class="wrap clearfix">
            <div id="J_loginDiv">
                <form action="${path }/admin/admin_login" method="post" onsubmit="return check()">
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
                    <span style="color:red;font-size: 21px;margin-left: 45px;">${message}</span>
                    <div id="J_loginCoreWrap" class="infro">
                        <div class="username" id="username_div">
                            <span></span> <input class="user" id="txtUsername"
                                                 name="admin.username" type="text"/>
                        </div>
                        <br/> <br/>
                        <div class="password" id="password_div">
                            <span></span> <input class="pass" id="txtPassword"
                                                 name="admin.password" type="password"/>
                        </div>
                        <br/> <br/> 验证码: <input type="text" name="captchaCode"><br/>
                        <img src="${pageContext.request.contextPath }/admin/captcha"
                             id="captchaImg"/> <a href="javascript:void(0)"
                                                  onclick="changeCaptcha()">看不清，换一张!~</a>&nbsp;<span
                            style="color:red">${errorMsg }</span><br/>
                        <script type="text/javascript">
                            function changeCaptcha() {
                                // 根据ID获取到验证码图片对象
                                var captchaImg = document
                                    .getElementById('captchaImg');
                                captchaImg.src = '${pageContext.request.contextPath }/admin/captcha?'
                                    + Math.random();
                            }
                        </script>
                        <br/> <br/>
                        <p class="btn">
                            <input id="submitLoginBtn" type="submit" value="登&nbsp;录"/>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>