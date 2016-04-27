<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<t:layout title="Add product">
    <jsp:attribute name="head_area">

    </jsp:attribute>
    <jsp:attribute name="body_area">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">

            <sf:form id='new-product-form' class="form-horizontal" modelAttribute="product" action='/products' method='POST'>
                <h2>Add your own Product!</h2>

                <div class="form-inline form-group">
                    <label for="name">Name:</label>
                <sf:input type="text"
                          path="name"
                          id="name"
                          class="form-control"
                          placeholder="Enter name"/>
                    <sf:errors path="name"/>

                    <label for="price">Price:</label>
                    <sf:input type="text"
                              path="price"
                              id="price"
                              class="form-control"
                              placeholder="Enter price"/>
                    <sf:errors path="price"/>
                </div>

                <div class="form-inline form-group">
                    <label for="amount">Amount:</label>
                    <sf:input type="text"
                              path="amount"
                              id="amount"
                              class="form-control"
                              placeholder="Enter amount"/>
                    <sf:errors path="amount"/>

                    <label for="categoryId">Category:</label>
                    <sf:select path="categoryId" id="categoryId" class="form-control">
                        <sf:options items="${categories}"/>
                    </sf:select>
                    <sf:errors path="categoryId"/>
                </div>

                <div class="form-group">
                    <label for="description">Description of the product:</label>
                    <sf:textarea path="description" id="description" class="form-control" rows="3"/>
                    <sf:errors path="description"/>
                </div>


                <button class="btn btn-lg btn-primary btn-block" type="submit">Add!</button>

                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
            </sf:form>
        </div>
        <div class="col-sm-2"></div>
    </jsp:attribute>
</t:layout>
