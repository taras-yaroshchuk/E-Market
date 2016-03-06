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
        <th>Price</th>
        <th>Description</th>
        <th>Amount</th>
    </tr>
    </thead>
    <tbody id="productsTableBody">

    </tbody>
</table>
<button type="button" onclick="RestGet()">GET</button>
</body>
</html>