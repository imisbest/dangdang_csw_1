<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>order</title>
    <link rel="stylesheet" href="${path}/back/css/btn.css"/>

</head>
<body style="background-color: #f0f9fd;">
<div align=center style="font-size:25px">订单管理</div>
<hr/>
<table bordercolor='#898E90' align='center' border='3px' cellpadding='10px' cellspacing="0px">
    <tr bgcolor="lightblue" align="center">
        <td>订单id</td>
        <td>订单编号</td>
        <td>订单金额</td>
        <td>订单状态</td>
        <td>收件人</td>
        <td>收货地址</td>
        <td>创建日期</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${orderLists}" var="p">
        <tr align='center'>
            <td>${p.id}</td>
            <td>${p.order_no}</td>
            <td>${p.total }</td>
            <td>${p.status }</td>
            <td>${p.address.name}</td>
            <td>${p.address.local}</td>
            <td><f:formatDate value="${p.create_date}" pattern="yyyy-MM-dd"/></td>
            <td>
                <input class="button btn-order"
                       onclick="location.href='${path}/address/backorder_detailOrderAction?orderid=${p.id}'"
                       value="订单详细信息 &raquo;"/>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
