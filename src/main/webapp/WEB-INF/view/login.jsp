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

<div>
    <a href="${pageContext.request.contextPath}/register" id="reg" role="button" aria-pressed="true">Registration</a>
</div>

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
<!-- Подключаем jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Подключаем плагин Popper -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>

<!-- Подключаем Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
</body>
</html>
