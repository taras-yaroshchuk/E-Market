<html>
<head>
	<title>Home Page</title>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="C:\Users\taras\Documents\IdeaProjects\E-Market\E-Market\src\main\webapp\resources\app\js\products.js"></script>
	<script>
		var RestGet = function() {
			$.ajax({
				type: 'GET',
				url:  '/getProducts',
				dataType: 'json',
				async: true,
				success: function(result) {
					for (var res in result)
					alert('OK');
				},
				error: function(jqXHR, textStatus, errorThrown) {
					alert(jqXHR.status + ' ' + jqXHR.responseText);
				}
			});
		}
	</script>
</head>
<body>
	<h1>Home Page</h1>
<p>Hello, User</p>
	<button type="button" onclick="RestGet()">Метод GET</button>
</body>
</html>