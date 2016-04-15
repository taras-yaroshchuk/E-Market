<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<t:layout title="Hello">
	<jsp:attribute name="head_area">
		<link rel="stylesheet" href="resources/app/vendor/css/datatables.css"/>

        <script src="resources/app/vendor/js/datatables.js"></script>
    </jsp:attribute>
    <jsp:attribute name="body_area">

        <div class="col-sm-4">
            <p>Choose a category!</p>
            <table id="category_table" class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th>Name</th>
                </tr>
                </thead>
                <tbody id="categoriesTableBody">

                </tbody>
            </table>
        </div>

        <div class="col-sm-8">
            <table id="products_table" class="table table-bordered">
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
        </div>

    </jsp:attribute>
</t:layout>
