<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home Page</title>
    <!-- use local copies of libraries-->
    <script src="resources/app/vendor/jquery-2.2.1.js"></script>
    <script src="resources/app/js/products.js"></script>

</head>

<body>
<h1>Home Page</h1>
<p>Hello, User</p>
<br/>
<table id="products_table" border="1">
    <thead>
    <tr>
        <th>Name</th>
    </tr>
    <c:forEach items="${categories}" var="category">

        <tr>
            <td><button type="button" value="${category.getName()}" onclick="RestGet(${category.getId()})" /></td>
        </tr>
    </c:forEach>
<table id="products_table" border="1">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Amount</th>
    </tr>
    </thead>
    <tbody id="productsTableBody">

    </tbody>
</table>
<%--<button type="button" onclick="RestGet(2)">GET</button>--%>
</body>
</html>