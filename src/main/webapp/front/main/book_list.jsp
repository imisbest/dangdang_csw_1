<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
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
    <link href="${path }/front/css/list.css" rel="stylesheet"
          type="text/css"/>
    <script type="text/javascript"
            src="${path }/front/js/prototype-1.6.0.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/front/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".aa").mouseover(function (e) {
                //alert("鼠标移入");
                //1.获取原图片大小
                var width = this.width * 2;
                var height = this.height * 2;
                //2.获取鼠标的坐标
                var x = e.pageX;
                var y = e.pageY;
                //3.创建div
                var div = $("<div id='bigDiv'/>").css({
                    "display": "none",
                    "position": "absolute",
                    "width": width,
                    "height": height,
                    "top": y + 15,
                    "left": x + 15,
                    "border": "2px solid yellow"
                });
                //4.创建img
                var img = $("<img/>").css({
                    "width": width,
                    "height": height
                }).attr({
                    "src": this.src
                });
                //5.将img放入div
                div.append(img);
                //6.将div放入body
                $("body").append(div);
                div.show(1000);
            }).mousemove(function (e) {
                //alert("鼠标移动");
                //1.获取鼠标的坐标
                var x = e.pageX;
                var y = e.pageY;
                //2.将鼠标位置赋值给div
                $("#bigDiv").css({
                    "top": y + 15,
                    "left": x + 15
                });
            }).mouseout(function (e) {
                //alert("鼠标移出");
                $("#bigDiv").remove();
            });
        });
    </script>
</head>
<body>
&nbsp;

<!-- 头部开始 -->
<%@include file="../common/head.jsp" %>
<!-- 头部结束 -->

<div style="width: 962px; margin: auto;">
    <a href="#"><img
            src="${path }/front/images/default/book_banner_081203.jpg" border="0"/>
    </a>
</div>

<div class='your_position'>
    您现在的位置:&nbsp; <a href='${path }/fmain/fmain_showAllInformation'>当当图书</a>
    &gt;&gt; <a
        href="${path }/category/fcategory_firstPageCategoryByid?id1=${category.id}&currPage=1">
    <font style='color: #cc3300'> <strong>${category.name }</strong></font>
</a>&gt;&gt; <a
        href="${path }/category/fcategory_secondPageCategoryByid?id1=${category.id}&id2=${category2.id}&currPage=1"><font
        style='color: #cc3300'> <strong>${category2.name }</strong></font> </a>


</div>


<div class="book">

    <!--左栏开始-->
    <div id="left" class="book_left">
        <div id="__fenleiliulan">
            <div class=second_l_border2>
                <h2>分类浏览</h2>
                <ul>
                    <li>
                        <div>
                            <div class=second_fenlei>&middot;全部&nbsp;${count1 }本</div>
                        </div>
                    </li>
                    <div class="clear"></div>


                    <c:forEach items="${firstLists }" var="f" varStatus="loop">
                        <!--2级分类开始-->
                        <li>
                            <div>
                                <div class=second_fenlei>&middot;</div>
                                <div class=second_fenlei>
                                    <a
                                            href="${path }/category/fcategory_secondPageCategoryByid?id1=${category.id}&id2=${f.id}&currPage=1">
                                        <c:if test="${!category2.id.equals(f.id)}">
                                            ${f.name }
                                        </c:if> <c:if test="${category2.id.equals(f.id)}">
                                        &gt;&gt;

                                        <a
                                                href="${path }/category/fcategory_secondPageCategoryByid?id1=${category.id}&id2=${f.id}&currPage=1">
                                            <font style='color: #cc3300'> <strong>${category2.name }</strong></font>
                                        </a>
                                    </c:if> &nbsp;


                                        (${countbook2[loop.count-1] }本)


                                    </a>
                                </div>

                            </div>
                        </li>
                        <div class="clear"></div>
                    </c:forEach>
                    <!--2级分类结束-->


                    <li>
                        <div></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!--左栏结束-->

    <!--中栏开始-->
    <div class="book_center">

        <!--图书列表开始-->
        <div id="divRight" class="list_right">

            <div id="book_list" class="list_r_title">
                <div class="list_r_title_text">排序方式</div>
                <select onchange='' name='select_order' size='1'
                        class='list_r_title_ml'>
                    <option value="">按上架时间 降序</option>
                </select>
                <div id="divTopPageNavi" class="list_r_title_text3">


                    <c:if test="${asd==2 }">
                        <!--分页导航开始-->
                        <!-- //首页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_secondPageCategoryByid?currPage=1&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_up.gif'/>
                            </a>
                        </div>
                        <!-- //上一页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_secondPageCategoryByid?currPage=${currPage-1}&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_up_gray.gif'/>
                            </a>
                        </div>
                        <!-- //当前页 -->
                        <div class='list_r_title_text3b'>
                                <%-- <c:forEach begin="1" end="${countPage}" var="i"> --%>
                            <a
                                    href="${path }/category/fcategory_secondPageCategoryByid?currPage=${currPage}&id1=${category.id}&id2=${category2.id}">当前第${currPage}/${countPage}页</a>
                            &nbsp;&nbsp;
                                <%-- </c:forEach> --%>
                        </div>


                        <!-- //下一页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_secondPageCategoryByid?currPage=${currPage+1}&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_down_gray.gif'/>
                            </a>
                        </div>
                        <!-- //最后一页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_secondPageCategoryByid?currPage=${countPage}&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_down.gif'/>
                            </a>
                        </div>

                        <!--分页导航结束-->
                    </c:if>


                    <c:if test="${asd==1 }">
                        <!--分页导航开始-->
                        <!-- //首页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_firstPageCategoryByid?currPage=1&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_up.gif'/>
                            </a>
                        </div>
                        <!-- //上一页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_firstPageCategoryByid?currPage=${currPage-1}&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_up_gray.gif'/>
                            </a>
                        </div>
                        <!-- //当前页 -->
                        <div class='list_r_title_text3b'>
                                <%-- <c:forEach begin="1" end="${countPage}" var="i"> --%>
                            <a
                                    href="${path }/category/fcategory_firstPageCategoryByid?currPage=${currPage}&id1=${category.id}&id2=${category2.id}">当前第${currPage}/${countPage}页</a>
                            &nbsp;&nbsp;
                                <%-- </c:forEach> --%>
                        </div>


                        <!-- //下一页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_firstPageCategoryByid?currPage=${currPage+1}&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_down_gray.gif'/>
                            </a>
                        </div>
                        <!-- //最后一页 -->
                        <div class='list_r_title_text3a'>
                            <a
                                    href="${path }/category/fcategory_firstPageCategoryByid?currPage=${countPage}&id1=${category.id}&id2=${category2.id}">
                                <img src='${path }/front/images/page_down.gif'/>
                            </a>
                        </div>

                        <!--分页导航结束-->
                    </c:if>
                </div>
            </div>


            <!--商品条目开始-->
            <c:forEach items="${secondLists }" var="s">
                <div class="list_r_line"></div>
                <div class="clear"></div>
                <div class="list_r_list">
						<span class="list_r_list_book"> <a name="link_prd_img"
                                                           href='#'> <img src="${path }/back/img/${s.cover}"
                                                                          class="aa"/>
						</a>
						</span>
                    <h2>
                        <a name="link_prd_name" href='${path }/fmain/fmain_detailAction?id=${s.id}'>${s.name }</a>

                    </h2>
                    <h3>顾客评分：100</h3>
                    <h4 class="list_r_list_h4">
                        作 者: <a href='#' name='作者'>${s.author }</a>
                    </h4>
                    <h4>
                        出版社： <a href='#' name='出版社'>${s.press }</a>
                    </h4>
                    <h4>
                        出版时间：
                        <f:formatDate value="${s.print_date }" pattern="yyyy-MM-dd"/>
                    </h4>
                    <h5>${editor_recommend }</h5>
                    <div class="clear"></div>
                    <h6>
                        <span class="del">￥${s.price }</span> <span class="red">￥${s.dprice }</span>
                        节省：￥${s.price-s.dprice }
                    </h6>
                    <span class="list_r_list_button">
							<%--<a href="${path}/order/order_ordermain?bookid=${s.id}">--%>
								<img src='${path }/front/images/buttom_goumai.gif' onclick="imgChange(this)"
                                     alt="${s.id}"/>
						<%--</a> --%>
							<script type="text/javascript">

            function imgChange(img) {
                img.src = "${path}/img/load.gif";
                var xhr;
                if (window.ActiveXObject) {
                    xhr = new ActiveXObject('Microsoft.xmlhttp');
                } else {
                    xhr = new XMLHttpRequest();
                }
                // 设置请求方式和请求目标
                xhr.open('get', '/order/order_ordermain?bookid=' + img.alt);
                console.log("bookid:" +${s.id});
                // 发送请求
                xhr.send();
                // 处理响应
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var json = xhr.responseText;
                        console.log(json);
                        // 将json字符串转换成js对象
                        var obj = JSON.parse(json);
                        console.log(obj)
                        //DOM编程

                    }
                    img.src = "${path}/img/right.gif";
                    setTimeout(function () {
                        img.src = "${path }/front/images/buttom_goumai.gif";
                    }, 1000);
                }
            }
		</script>
							<span id="cartinfo"></span>
                </div>
                <div class="clear"></div>

            </c:forEach>
            <!--商品条目结束-->

            <div class="clear"></div>
            <div id="divBottomPageNavi" class="fanye_bottom"></div>
        </div>
        <!--图书列表结束-->

    </div>
    <!--中栏结束-->
    <div class="clear"></div>
</div>

<!--页尾开始 -->
<%@include file="../common/foot.jsp" %>
<!--页尾结束 -->
</body>
</html>
