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
    <link rel="stylesheet" href="${path }/back/css/btn.css"/>

    <style type="text/css">
        table {
            border-right: 1px solid black;
            border-bottom: 1px solid black;
        }

        table td {
            padding: 10px;
            text-align: center;
            border-left: 1px solid black;
            border-top: 1px solid black;
        }
    </style>
</head>

<body style="background-color: #f0f9fd;">

<div align=center style="font-size:25px">图书管理</div>
<hr/>
<div style="margin: 0 auto;text-align:center;">
    <form action="${path}/book/book_queryLike" method="post" onsubmit="return check()">
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
        <input onclick="location.href='${path}/book/book_addAction'" class="button btn-p"
               value="添加图书&raquo;"/>&emsp;&emsp;
        <select name="key" class="el-select__inner inner2">
            <option value="name">书名</option>
            <option value="author">作者</option>
            <option value="press">出版社</option>
        </select>
        <input class="el-input__inner" type="text" placeholder="请输入查询条件" name="content"/>
        <input class="el-search-content" type="submit" value="搜索"/>
    </form>
</div>
<div style="margin-top:20px">
    <table bordercolor='#898E90' align='center' border='3px'
           cellpadding='5px' cellspacing="0px">
        <tr bgcolor='lightblue' align='center'>
            <td style="width: 100px">名称</td>
            <td>作者</td>
            <td>定价</td>
            <td>当当价</td>
            <td>出版社</td>
            <td>出版时间</td>
            <td>封面图</td>
            <td>销量</td>
            <td>库存</td>
            <td>操作</td>
        </tr>

        <c:forEach items="${lists }" var="p">
            <tr align='center'>
                <td>${p.name }</td>
                <td>${p.author }</td>
                <td>${p.price }</td>
                <td>${p.dprice }</td>
                <td>${p.press }</td>
                <td><f:formatDate value="${p.press_date }" pattern="yyyy-MM-dd"/></td>
                <td><img width="32px" height="20px"
                         src="${path }/back/img/${p.cover}"></td>
                <td>${p.sale }</td>
                <td>${p.stock }</td>
                <td><input class="button" onclick="location.href='${path}/book/book_queryAllConnection?id=${p.id }'"
                           value="修改 "/> <input class="button-del"
                                                onclick="location.href='${path}/book/book_deleteAction?id=${p.id}'"
                                                value="删除 "/></td>
            </tr>

        </c:forEach>

    </table>
</div>
<br>
</body>
</html>
