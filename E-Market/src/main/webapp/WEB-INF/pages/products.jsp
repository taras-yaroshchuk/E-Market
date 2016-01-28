<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Products</title>
</head>
<body>
<h1>Poducts:</h1>
<table>
    <c:forEach items="${productList}"
               var="product" >
        <tr>
            <td><c:out value="${product.name}" /></td>
            <td><c:out value="${product.price}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
