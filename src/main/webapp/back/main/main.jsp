<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <script>
    </script>


</head>
<frameset rows="150,*" noresize="true" border="2px" bordercolor="#9A9D9F">
    <frame src="head.jsp">
    <frameset cols="15%,*">
        <frame src="menu.jsp"/>
        <frame name="Homepage" src="home.jsp">
    </frameset>
</frameset>
</html>