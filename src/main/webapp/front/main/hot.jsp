<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>
    <span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>热销图书
</h2>
<div class="book_c_04">
    <c:forEach items="${hotbook }" var="p">
        <!--热销图书A开始-->
        <div class="second_d_wai">
            <div class="img">
                <a href="${path }/fmain/fmain_detailAction?id=${p.id}" target='_blank'> <img
                        src="${path }/back/img/${p.cover}" border="0" class="aa"/>
                </a>
            </div>
            <div class="shuming">
                <a href="${path }/fmain/fmain_detailAction?id=${p.id}" target="_blank">${p.name }</a><a href="#"
                                                                                                        target="_blank"></a>
            </div>
            <div class="price">定价：${p.price }</div>
            <div class="price">当当价：${p.dprice }</div>
            <div class="price">
                销量：<font color="red">${p.sale }</font>
            </div>
        </div>


        <div class="book_c_xy_long"></div>
        <!--热销图书A结束-->
    </c:forEach>
</div>
<div class="clear"></div>