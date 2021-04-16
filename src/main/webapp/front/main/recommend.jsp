<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<h2>编辑推荐</h2>
<div id=__bianjituijian/danpin>
    <div class=second_c_02>

        <c:forEach items="${recommened }" var="p">
            <div class=second_c_02_b1>
                <div class=second_c_02_b1_1>
                    <a href='${path }/fmain/fmain_detailAction?id=${p.id}' target='_blank'><img
                            src="${path }/back/img/${p.cover}" width=70 border=0 class="aa"/> </a>
                </div>
                <div class=second_c_02_b1_2>
                    <h3>
                        <a href='${path }/fmain/fmain_detailAction?id=${p.id}'
                           target='_blank'>${p.name }</a>
                    </h3>
                    <h4>
                        作者：${p.author } 著 <br/> 出版社：${p.press }&nbsp;&nbsp;&nbsp;&nbsp;
                        出版时间：<f:formatDate value="${p.press_date }" pattern="yyyy-MM-dd"/>
                    </h4>
                    <h5>介绍 ${p.content_abstract }</h5>
                    <h6>
                        定价：${p.press }&nbsp;&nbsp; 当当价：${p.dprice }销量：<font color="red">${p.sale }</font>
                    </h6>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
