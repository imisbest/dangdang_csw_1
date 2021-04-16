<%@ page pageEncoding="UTF-8" contentType="text/html; charset=utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    request.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>index.html</title>
    <link rel="stylesheet" href="${path}/back/css/btn.css"/>
    <style type="text/css">
        body {
            text-align: center;
        }

        select {
            width: 173px;
        }
    </style>
    <script type="text/javascript" src="${path}/back/js/jquery-3.3.1.js"></script>
</head>

<body style="background-color: #f0f9fd;">

<div style="text-align:center ;font-size:18px">添加商品类别</div>
<hr/>

<form action="${path}/category/category_secondAddAction" method="post" onsubmit="return check()">
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
    所属一级类别:
    <select name="category.parent_id" class="el-select__inner">
        <c:forEach items="${lists}" var="p">
            <option value="${p.id }">${p.name }</option>
        </c:forEach>
    </select>
    <br/><br/>
    二级类别名:<input class="el-input__inner" type="text" name="name" id="sname"/><br/><br/>
    <input class="button btn-p" type="submit" value="提交"/>&emsp;
    <a href="${path }/category/category_showAction"><input
            type="button" class="button btn-p" value="返回上级"/></a>
</form>


</body>
</html>
