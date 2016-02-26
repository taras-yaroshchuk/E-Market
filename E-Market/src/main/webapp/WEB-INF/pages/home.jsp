<html>
<head>
    <title>Home Page</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="/resources/app/js/products.js"> </script>
</head>

<body>
<h1>Home Page</h1>
<p>Hello, User</p>
<table id="products_table" border="1" hidden="true">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Amount</th>
    </tr>
</table>
<button type="button" onclick="RestGet()">GET</button>
</body>
</html>