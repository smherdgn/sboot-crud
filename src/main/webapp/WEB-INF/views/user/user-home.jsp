<%--
  Created by IntelliJ IDEA.
  User: semih
  Date: 08.02.2018
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
</head>
<body>
<div id="navbar-left-elements" style="display: none">
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="#">
        <div class="input-group">
            <input type="text" class="form-control form-group-lg" placeholder="Search">
            <div class="input-group-btn">
                <button class="btn btn-outline-success btn-lg" type="submit">
                    <i class="glyphicon glyphicon-search"></i>
                </button>
            </div>
        </div>
    </form>
</div>
<div id="navbar-right-elements" style="display: none">
    <ul class="nav navbar-nav navbar-right">
        <li>
            <a onclick="document.forms['logoutForm'].submit()"><span class="glyphicon glyphicon-log-out"></span> Log Out</a>
        </li>
    </ul>
</div>
<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>

</div>
</body>
</html>