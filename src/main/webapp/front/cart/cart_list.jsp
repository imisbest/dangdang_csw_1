<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>当当图书 – 全球最大的中文网上书店</title>
    <link href="${path }/front/css/book.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path }/front/css/second.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path }/front/css/secBook_Show.css" rel="stylesheet"
          type="text/css"/>
    <link href="${path }/front/css/shopping_vehicle.css" rel="stylesheet"
          type="text/css"/>
</head>
<body>
<br/>
<br/>
<div class="my_shopping">
    <img class="pic_shop" src="${path }/front/images/pic_myshopping.gif"/>
</div>
<c:if test="${cart==null }">
    <div id="div_no_choice">
        <div class="choice_title"></div>
        <div class="no_select">
            您还没有挑选商品[<a href='${path }/fmain/fmain_showAllInformation'>
            继续挑选商品&gt;&gt;</a>]
        </div>
    </div>
</c:if>
<c:if test="${cart!=null }">

    <div id="div_choice" class="choice_merch">
        <h2 id="cart_tips">您已选购以下商品</h2>
        <div class="choice_bord">
            <table class="tabl_buy" id="tbCartItemsNormal">
                <tr class="tabl_buy_title">
                    <td class="buy_td_6"><span>&nbsp;</span></td>
                    <td><span class="span_w1">商品名</span></td>
                    <td class="buy_td_5"><span class="span_w2">市场价</span></td>
                    <td class="buy_td_4"><span class="span_w3">当当价</span></td>
                    <td class="buy_td_1"><span class="span_w2">数量</span></td>
                    <td class="buy_td_2"><span>变更数量</span></td>
                    <td class="buy_td_1"><span>删除</span></td>
                </tr>
                <tr class='objhide' over="no">
                    <td colspan="8">&nbsp;</td>
                </tr>
                <c:forEach items="${cart}" var="c">
                    <!-- 购物列表开始 -->
                    <tr class='td_no_bord'>
                        <td style='display: none'>b12345</td>
                        <td class="buy_td_6"><span class="objhide"> <img
                                src=""/>
							</span></td>
                        <td><a href="">${c.value.name}</a></td>
                        <td class="buy_td_5"><span class="c_gray">￥${c.value.price}</span></td>
                        <td class="buy_td_4">&nbsp;&nbsp; <span>￥${c.value.dprice}</span>
                        </td>
                        <td class="buy_td_1">&nbsp;&nbsp;${c.value.count}</td>

                        <form action="${path}/order/order_orderChange?bookid=${c.key}"
                              method="post" onsubmit="return check()">
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
                            <td><input id="" class="del_num" type="number" size="3"
                                       maxlength="4" value="" name="orderC" min="1"
                                       max=""/> <%-- <a href="${path}/order/order_orderChange?bookid=${c.key}">变更</a> --%>
                                <input type="submit" value="变更"></td>
                        </form>

                        <td><a
                                href="${path}/order/order_orderDelete?bookid=${c.key}">删除</a></td>
                    </tr>
                </c:forEach>
            </table>

            <div class="choice_balance">
                <div class="select_merch">
                    <a href='${path}/fmain/fmain_showAllInformation'> 继续挑选商品>></a>
                </div>
                <div class="total_balance">
                    <div class="save_total">
                        您共节省： <span class="c_red"> ￥<span id="total_economy">${savingMoney }</span>
							</span> <span style="font-size: 14px">|</span> <span class="t_add">商品金额总计：</span>
                        <span class="c_red_b"> ￥<span id='total_account'>${totalMoney}</span>
							</span>
                    </div>
                    <div id="balance" class="balance">
                        <a name='checkout' href='${path}/front/order/order_info.jsp'> <img
                                src="${path}/front/images/butt_balance.gif" alt="结算" border="0"
                                title="结算"/>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:if>
<!--页尾开始 -->
<div style="position:absolute;bottom: 10px;width:100%;">
    <%@include file="../common/foot.jsp" %>
</div>
<!--页尾结束 -->
</body>
</html>



