<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:layout title="Login">
    <jsp:attribute name="head_area">

    </jsp:attribute>
    <jsp:attribute name="body_area">
        <div class="container" style="width: 300px;">
            <c:url value="/j_spring_security_check" var="loginUrl" />
            <form action="${loginUrl}" method="post">
                <h2 class="form-signin-heading">Please sign in</h2>
                <input type="text" class="form-control" name="j_username" placeholder="Email address" required autofocus>
                <input type="password" class="form-control" name="j_password" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
            </form>
        </div>
    </jsp:attribute>
</t:layout>
