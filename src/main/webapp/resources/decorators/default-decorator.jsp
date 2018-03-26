<%--
  Created by IntelliJ IDEA.
  User: ind-h.ibrahimsengul
  Date: 8.03.2018
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <link rel='stylesheet' type="text/css" href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css")%>'>
    <link rel='stylesheet' type="text/css" href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css")%>'>

    <title><sitemesh:write property='title'/></title>
    <sitemesh:write property='head'/>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${contextPath}/home">Spring Boot CRUD</a>
                <%--<img alt="logo" src="${contextPath}\resources\assets\spring-logo.png">--%>
            </a>
        </div>
        <sitemesh:write property='div.navbar-left-elements'/>
        <sitemesh:write property='div.navbar-right-elements'/>
    </div>
</nav>
<sitemesh:write property='body'/>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript' src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
</body>
</html>
