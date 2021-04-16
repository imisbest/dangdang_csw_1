<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="book_l_border1" id="__FenLeiLiuLan">
    <div class="book_sort_tushu">
        <h2>分类浏览</h2>
        <c:forEach items="${firstCategory}" var="f">
            <!--1级分类开始-->

            <div class="bg_old" onmouseover="this.className = 'bg_white';"
                 onmouseout="this.className = 'bg_old';">
                <h3>
                    [<a
                        href='${ path}/category/fcategory_firstPageCategoryByid?id1=${f.id}&currPage=1'>${f.name }</a>]
                </h3>
                <ul class="ul_left_list">

                    <!--2级分类开始-->
                    <c:forEach items="${firstAndSecond}" var="s">
                        <li><c:if test="${f.id.equals(s.category.id) }">
                            <a
                                    href='${path }/category/fcategory_secondPageCategoryByid?id1=${f.id}&id2=${s.id}&currPage=1'>${s.name }</a>
                        </c:if></li>
                    </c:forEach>
                    <!--2级分类结束-->

                </ul>
                <div class="empty_left"></div>
            </div>

            <div class="more2"></div>
        </c:forEach>
        <!--1级分类结束-->


        <div class="bg_old">
            <h3>&nbsp;</h3>
        </div>
    </div>
</div>
