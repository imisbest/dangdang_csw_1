<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>order</title>
    <link rel="stylesheet" href="${path}/back/css/btn.css"/>

</head>
<body style="background-color: #f0f9fd;text-align: center">
<div align=center style="font-size:25px">订单详细信息</div>
<hr/>
<table bordercolor='#898E90' align='center' border='3px'
       cellpadding='5px' cellspacing="0px">
    <c:forEach items="${orders}" var="p" end="0">
        <tr bgcolor="lightblue" align="center">
            <td>订单号：${p.order_no }</td>
            <td colspan="2">订单金额：¥：${p.total }</td>
            <td colspan="2">订单状态：${p.status }</td>
        </tr>
    </c:forEach>

    <c:forEach items="${itemaa}" var="p">
        <tr align='center'>
            <td>${p.book.name }</td>
            <td style="width: 100px;"><img style="width:32px;height: 20px"
                                           src="${path }/back/img/${p.book.cover }"></td>
            <td style="width: 180px;">单价：¥${p.book.price }</td>
            <td style="width: 200px;">当当价：¥${p.book.dprice }</td>
            <td style="width: 100px;">${p.count }本</td>
        </tr>
    </c:forEach>
</table>
<input class="button btn-p" value="返回上级" onclick="history.go(-1);"
       style="margin-top: 10px"/>
</body>
</html>
