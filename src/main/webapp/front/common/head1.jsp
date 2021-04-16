<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>

<div class="login_top">
    <a href="${path }/fmain/fmain_showAllInformation" target="_blank">
        <img class="logo" src="${path }/front/images/logo.gif"/>
    </a>
</div>