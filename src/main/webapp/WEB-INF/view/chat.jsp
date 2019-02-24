<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chat</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/chat.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/chat.js"></script>
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
</head>
<body>

<div class="menu">
    <nav class="nav nav-pills nav-justified">
        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Home</a>
        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/friends">Friends</a>
        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/about">About</a>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input class="logout" type="submit" value=""/>
        </form:form>
    </nav>
</div>

<noscript>
    <h2>Sorry! Your browser doesn't support Javascript</h2>
</noscript>


<div id="username-page">
    <div class="username-page-container">
        <h1 class="title">Type your username</h1>
        <form id="usernameForm" name="usernameForm">
            <div class="form-group">
                <input type="text" hidden id="name" value="${user.username}" class="form-control" />
            </div>
            <div class="form-group">
                <button type="submit" class="accent username-submit">Start Chatting</button>
            </div>
        </form>
    </div>
</div>

<div id="chat-page">
    <div class="chat-container">
        <div class="chat-header">
            <h2>Chat</h2>
        </div>
        <ul id="messageArea">

        </ul>
        <form id="messageForm" name="messageForm">
            <div class="form-group">
                <div class="input-group clearfix">
                    <input type="text" id="message" placeholder="Type a message..." autocomplete="off" class="form-control"/>
                    <button type="submit" class="primary">Send</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/chat.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
</body>
</html>
