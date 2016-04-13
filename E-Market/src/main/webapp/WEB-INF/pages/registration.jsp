<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<t:layout title="Registration">
    <jsp:attribute name="head_area">

    </jsp:attribute>
    <jsp:attribute name="body_area">
        <h3 align="center">Register your account now!</h3>

        <sf:form method="POST" modelAttribute="user" action="/users" role="form-horizontal">
            <div class="form-group">
                <label for="username">Username:</label>
                <sf:input type="text"
                          path="username"
                          id="username"
                          class="form-control"
                          placeholder="Enter username"/>
                <sf:errors path="username"/>
            </div>

            <div class="form-group">
                <label for="customer_email">Email:</label>
                <sf:input type="email" path="email" id="customer_email" class="form-control"
                          placeholder="Enter email"/>
                <sf:errors path="email"/>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <sf:input type="password" path="password" id="password" class="form-control"
                          placeholder="Enter password"/>
                <sf:errors path="password"/>
            </div>

            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </sf:form>
    </jsp:attribute>
</t:layout>
