<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>生成订单 - 当当网</title>
    <link href="${path }/front/css/login.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path }/front/css/page_bottom.css" rel="stylesheet"
          type="text/css"/>

</head>
<body>
<%@include file="../common/head1.jsp" %>
<div class="login_step">
    生成订单骤: 1.确认订单 > <span class="red_bold"> 2.填写送货地址</span> > 3.订单成功
</div>
<div class="fill_message">
    <form name="ctl00" method="post"
          action="${path}/address/address_addressInfo" id="f">
        <p>
            选择地址： <select id="address" onchange="changeAddress(this.value)" name="addressid">
            <option value="">填写新地址</option>
            <c:forEach items="${listaddressList }" var="p">
                <c:if test="${!addrbjString.equals(p.id) }">
                    <option value="${p.id}">${p.local}</option>
                </c:if>
                <c:if test="${addrbjString.equals(p.id) }">
                    <option value="${p.id}" selected="selected">${p.local}</option>
                </c:if>
            </c:forEach>
        </select>

            <script type="text/javascript">
                function changeAddress(addressId) {
                    window.location.href = "${path}/address/address_orderNextAction?addressid="
                        + addressId;
                }
            </script>
        </p>

        <input type="hidden" name="id" id="addressId"/>

        <table class="tab_login">
            <tr>
                <td valign="top" class="w1">收件人姓名：</td>
                <td><input type="text" class="text_input" name="address.name"
                           id="receiveName" value="${ass.name}"/>
                    <div class="text_left" id="nameValidMsg">
                        <p>请填写有效的收件人姓名</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td valign="top" class="w1">收件人详细地址：</td>
                <td><input type="text" name="address.local" class="text_input"
                           id="fullAddress" value="${ass.local}"/>
                    <div class="text_left" id="addressValidMsg">
                        <p>请填写有效的收件人的详细地址</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td valign="top" class="w1">邮政编码</td>
                <td><input type="text" class="text_input"
                           name="address.zip_code" id="postalCode" value="${ass.zip_code}"/>
                    <div class="text_left" id="codeValidMsg">
                        <p>请填写有效的收件人的邮政编码</p>
                    </div>
                </td>
            </tr>
            <tr>
                <td valign="top" class="w1">电话</td>
                <td><input type="text" class="text_input" name="address.phone"
                           id="phone" value="${ass.phone}"/>
                    <div class="text_left" id="phoneValidMsg">
                        <p>请填写有效的收件人的电话</p>
                    </div>
                </td>
            </tr>
            <span></span>
            <h1>
                <span style="color: red;font-family:微软雅黑">${message}</span></h1>
        </table>

        <div class="login_in">
            <a href="${path}/front/order/order_info.jsp"> <input
                    id="btnClientRegister" class="button_1" name="submit" type="button"
                    value="取消"/>
            </a> <input id="btnClientRegister" class="button_1" name="submit"
                        type="submit" value="下一步"/>
        </div>
    </form>
</div>
<%@include file="../common/foot1.jsp" %>
</body>
</html>

