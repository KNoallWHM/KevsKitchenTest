<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>


<head>
    <title>Login</title>
</head>
    <section>
<h1>Admin</h1>
<p>Please enter Credentials if you would like to add Recipes to Kevs Kitchen</p>
<c:if test="${param.error != null}">
</c:if>
<c:if test="${!empty logout}">
    <br><br><div>You have been logged out.</div><br><br>
</c:if>

<form action="<c:url value='/login'/>" method="POST">
    <input type="text" name="username" autofocus required/>
    <br>
        <input type="password" name="password" required/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <br>
    <br>
        <input type="submit" value="Sign In"/>
</form>
    </section>

<br>
<a href="/">Home</a>
<br>
</body>
</html>
