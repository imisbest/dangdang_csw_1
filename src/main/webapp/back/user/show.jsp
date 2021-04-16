<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/back/css/btn.css"/>
</head>
<body style="background-color: #f0f9fd;">
<div align=center style="font-size:25px">用户管理</div>
<hr/>
<table bordercolor='#898E90' align='center' border='3px' cellpadding='10px' cellspacing="0px">
    <tr bgcolor='lightblue' align='center'>
        <td>Id</td>
        <td>昵称</td>
        <td>邮箱</td>
        <td>状态</td>
        <td>激活码</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${listuser}" var="v">
        <tr align='center'>
            <td>${v.id }</td>
            <td>${v.nickname }</td>
            <td>${v.email }</td>
            <td>${v.status }</td>
            <td>${v.code }</td>
            <td>
                <input class="button" onclick="location.href='${path}/user/backuser_changeCode?userid=${v.id}'"
                       value="修改 &raquo;"/>
            </td>
        </tr>
    </c:forEach>


</table>
</body>
</html>



