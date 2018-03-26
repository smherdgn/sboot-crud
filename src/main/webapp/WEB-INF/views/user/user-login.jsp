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
    <title>Login</title>
</head>

<body>
<div id="navbar-right-elements" style="display: none">
    <ul class="nav navbar-nav navbar-right">
        <li><a href="${contextPath}/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
</div>

<div class="container">

    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>

        </div>

    </form>
    <button class="btn btn-lg btn-primary btn-block" onclick="window.location='${contextPath}/register';">Register</button>
</div>
</body>
</html>