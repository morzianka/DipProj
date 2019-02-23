<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>About</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/about.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
</head>
<body>

<div class="menu">
    <nav class="nav nav-pills nav-justified">
        <a class="nav-item nav-link" href="/">Home</a>
        <a class="nav-item nav-link" href="/friends">Friends</a>
        <a class="nav-item nav-link active" href="/about">About</a>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input class="logout" type="submit" value=""/>
        </form:form>
    </nav>
</div>

<div class="info">
    <h3>What you may get at our service</h3>
    <br>
    <ul>
        <li>
            <h4>New languages!</h4>
            <p>Give your brain a boost!</p>
        </li>
        <li>
            <h4>New friends!</h4>
            <p>Learning new language is a very hard job but... much more pleasant with friends!</p>
        </li>
        <li>
            <h4>New world!</h4>
            <p>New language open you way to new novel world with new culture, vision, traditions, new people. It's
                really exciting place!</p>
        </li>
    </ul>
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