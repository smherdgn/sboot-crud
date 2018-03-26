<%--
  Created by IntelliJ IDEA.
  User: semih
  Date: 08.02.2018
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up</title>
</head>

<body>
<div id="navbar-right-elements" style="display: none">
    <ul class="nav navbar-nav navbar-right">
        <li><a href="${contextPath}/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
</div>
<div class="container">

    <form:form commandName="user" method="POST" id="form"  role="form" action="${contextPath}/register" class="form-signin">
        <h2 class="form-heading">Register</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <form:input  path="userName" name="username" type="text" required="required" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <form:input name="password" path="password" type="password" required="required" class="form-control" placeholder="Password"/>
            <span>${error}</span>

            <form:input name="namesurname" path="nameSurname"    type="text" class="form-control" required="required" placeholder="Name Surname"/>
            <span>${error}</span>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
        </div>

    </form:form>

</div>
</body>
</html>