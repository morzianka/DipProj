<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
</head>
<body>
<div class="center">

    <c:if test="${param.logout != null}">
        <p>You have been logged out!</p>
    </c:if>

    <c:if test="${param.error != null}">
        <p>Invalid username/password</p>
    </c:if>

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
        <p><input class="name" placeholder="Email" type="text" name="username"/></p>
        <p><input class="pass" placeholder="Password" type="password" name="password"/></p>
        <input type="submit" value="Login"/>
    </form:form>
</div>
</body>
</html>
