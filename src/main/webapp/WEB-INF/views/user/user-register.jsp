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
    <link rel='stylesheet' type="text/css" href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css")%>'>
    <link rel='stylesheet' type="text/css" href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css")%>'>
    <title>Login</title>

</head>

<body>

<div class="container">

    <form:form commandName="user" method="POST" id="form"  role="form" action="${contextPath}/register" class="form-signin">
        <h2 class="form-heading">REGISTER</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <form:input  path="userName" name="username" type="text" required="required" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <form:input name="password" path="password" type="password" required="required" class="form-control" placeholder="Password"/>
            <span>${error}</span>

            <form:input name="namesurname" path="nameSurname"    type="text" class="form-control" required="required" placeholder="Name Surname"/>
            <span>${error}</span>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">register</button>
        </div>

    </form:form>

</div>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>
</html>