<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring-form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
</head>
<body>

<div class="menu">
    <nav class="nav nav-pills nav-justified">
        <a class="nav-item nav-link active" href="/">Home</a>
        <a class="nav-item nav-link" href="/friends">Friends</a>
        <a class="nav-item nav-link" href="/about">About</a>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input class="logout" type="submit" value=""/>
        </form:form>
    </nav>
</div>

<div class="col-sm-6" align="center" style="font-weight: bold">
    <h2 id="helloUser">Hello, ${user.login}!</h2>
    <br>
    <div class="card">

        <p>Name: ${user.name}</p>
        <p class="title">CEO & Founder, Example</p>
        <p>Age: ${user.age}</p>
        <p id="gender">
            <script>
                var gender;
                if (!${user.gender}) gender = "женский"; else gender = "мужской";
                document.getElementById("gender").innerText = "Gender: " + gender;
            </script>
        </p>
        <p>Native language: ${user.nativeLanguage}</p>
        <p>Language to learn: ${user.languageToLearn}</p>
    </div>

</div>

<div>
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Edit</button>

    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">

                    <form:form action="saveUser" modelAttribute="user" method="POST">
                        <form:hidden path="login"/>
                        <table>
                            <tbody>
                            <tr>
                                <td><label>Name: </label></td>
                                <td><form:input path="name"/></td>
                            </tr>
                            <tr>
                                <td><label>Age: </label></td>
                                <td><form:input path="age"/></td>
                            </tr>
                            <tr>
                                <td><label>Gender: </label></td>
                                <td><label>male</label>
                                    <checkbox></checkbox>
                                </td>
                                <td><label>female</label><form:checkbox path="gender"/></td>
                            </tr>
                            <tr>
                                <td><label class="language">Language you want to learn:</label></td>
                                <td>
                                    <form:select path="languageToLearn">
                                        <form:options items="${languages}"/>
                                    </form:select>
                                </td>
                            </tr>
                            <tr>
                                <td><label class="language">Your native language:</label></td>
                                <td>
                                    <form:select path="nativeLanguage">
                                        <form:options items="${languages}"/>
                                    </form:select>
                                </td>
                            </tr>
                            <form:hidden path="password"/>
                            <%--<form:hidden path="friends"/>--%>
                            </tbody>
                        </table>
                        <tr>
                            <td><label></label></td>
                            <td><input class="save" type="submit" value="Save"/></td>
                        </tr>
                    </form:form>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
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