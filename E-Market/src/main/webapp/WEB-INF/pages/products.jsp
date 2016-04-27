<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<t:layout title="Login">
    <jsp:attribute name="head_area">

    </jsp:attribute>
    <jsp:attribute name="body_area">
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
