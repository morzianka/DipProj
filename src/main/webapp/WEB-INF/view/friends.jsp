<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Friends</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/friends.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/chat.js"></script>
</head>

<body>

<div class="menu">
    <nav class="nav nav-pills nav-justified">
        <a class="nav-item nav-link" href="/">Home</a>
        <a class="nav-item nav-link active" href="${pageContext.request.contextPath}/friends">Friends</a>
        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/about">About</a>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input class="logout" type="submit" value=""/>
        </form:form>
    </nav>
</div>

    <a id="possibleFriends" href="/possibleFriends">Find new friends!</a>
<br><br>
    <c:forEach items="${user.friends}" var="friend">
    <div class="col-sm-6">
        <div class="card">
            <img id="friendImage" class="card-img-top" src="resources/img/avatar.png" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">${friend.username}</h4>
                <p class="card-text">Your friend native language is ${friend.nativeLanguage}</p>
                <p class="card-text">${friend.name} wants to learn ${friend.languageToLearn}</p>
                <br>
                <a href="/friendProfile" id="seeProfile" class="btn btn-primary">See Profile</a>
                <a href="/chat" id="chatButton" class="btn btn-primary">Chat</a>
            </div>
        </div>
    </div>
    </c:forEach>

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