<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<%@tag description="Simple Template" pageEncoding="UTF-8" %>

<%@attribute name="title" %>
<%@attribute name="head_area" fragment="true" %>
<%@attribute name="body_area" fragment="true" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>${title}</title>

    <!-- use local copies of libraries-->
    <script src="resources/app/vendor/js/jquery-2.2.1.js"></script>
    <script src="resources/app/js/products.js"></script>
    <script src="resources/app/vendor/js/bootstrap.js"></script>
    <script src="resources/app/vendor/js/lodash.core.js"></script>

    <link rel="stylesheet" href="resources/app/vendor/css/bootstrap.css"/>

    <jsp:invoke fragment="head_area"/>
</head>
<body>
<c:url value="/logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />

</form>
<script>
    function formSubmit() {
        $("#logoutForm").submit();
    }
</script>

<div class="container">

    <div class="well">
        <div class="page-header">
            <h1 align="center">Welcome to E-Market!</h1>
        </div>

        <nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/E-Market">E-Market</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/E-Market">Home</a></li>
                    <li><a href="#">Page 1</a></li>
                    <li><a href="#">Page 2</a></li>
                    <li><a href="#">Page 3</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <sec:authorize access="!isAuthenticated()">
                        <li><a href="/registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <a class="btn btn-lg btn-success" href="<c:url value="/login" />" role="button"><span class="glyphicon glyphicon-log-in"></span>Sign In</a><
                    </sec:authorize>

                    <sec:authorize access="isAuthenticated()">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Hello, <sec:authentication property="principal.username"/>!</a></li>
                        <a class="btn btn-lg btn-danger" href="javascript:formSubmit()" role="button"><span class="glyphicon glyphicon-log-in"></span>Logout</a>
                    </sec:authorize>
                </ul>
            </div>
        </nav>

        <div class="row">
            <div class="col-sm-12">
                <jsp:invoke fragment="body_area"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>



