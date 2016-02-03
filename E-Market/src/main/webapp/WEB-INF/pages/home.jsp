<html>
<head>
    <title>Home Page</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="C:\Users\taras\Documents\IdeaProjects\E-Market\E-Market\src\main\webapp\resources\app\js\products.js"></script>
    <script>
        var RestGet = function () {
            $.ajax({
                type: 'GET',
                url: '/getProducts',
                async: true,
                dataType: 'json',
                success: function (json) {
                    $('#products_table').empty();
                    $('#products_table').show();
                    var trHTML = '';
                    $.each(json, function (key, value) {
                        trHTML += '<tr><td>' + value.name + '</td><td>' + value.price +
                                '</td><td>' + value.description + '</td><td>' + value.amount + '</td></tr>';
                    });

                    $('#products_table').append(trHTML);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert('ERROR!!' + jqXHR.status + ' ' + jqXHR.responseText);
                }
            });
        }
    </script>
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