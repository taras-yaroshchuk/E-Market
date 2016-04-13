<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<t:layout title="Login">
    <jsp:attribute name="head_area">

    </jsp:attribute>
    <jsp:attribute name="body_area">
        <div class="container" style="width: 300px;">
            <c:if test="${not empty error}">
			<div class="error">${error}</div>
		    </c:if>
		    <c:if test="${not empty msg}">
    			<div class="msg">${msg}</div>
    		</c:if>
            <c:if test="${not empty registration}">
    			<div class="msg">${registration}</div>
    		</c:if>

            <form name='loginForm'
                  action="<c:url value='/login' />" method='POST'>
                <h2 class="form-signin-heading">Please sign in</h2>
                <input type="text" class="form-control" name="username" placeholder="Email address" required
                       autofocus>
                <input type="password" class="form-control" name="password" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>

                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>
            </form>
        </div>
    </jsp:attribute>
</t:layout>
