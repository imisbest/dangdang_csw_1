<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <link rel="stylesheet" href="${path }/back/css/btn.css"/>
</head>
<body style="background-color: #f0f9fd;text-align: center;">

<div style="font-size:25px">类别管理</div>
<hr/>
<div style="margin-bottom: 10px;">
    <div class="button btn-p" onclick="location.href='${path}/back/category/add-first.jsp'">添加一级类别&raquo;</div>
    <div class="button btn-p" onclick="location.href='${path}/category/category_showSecondAction'">添加二级类别&raquo;</div>
</div>
<table bordercolor='#898E90' align='center' border='3px'
       cellpadding='10px' cellspacing="0px">
    <tr bgcolor='lightblue'>
        <td>Id</td>
        <td>类别名</td>
        <td>所属类别</td>
        <td>级别</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${lists }" var="lists">
        <tr>
            <td>${lists.id }</td>
            <td>${lists.name }</td>
            <td>${lists.category.name}</td>
            <td>${lists.levels }</td>
            <td>
                <div class="button" onclick="location.href='${path}/category/category_deleteAction?id=${lists.id }'"
                     name="">删除 &raquo;
                </div>
            </td>
        </tr>
    </c:forEach>


</table>
<br/>

</body>
</html>



