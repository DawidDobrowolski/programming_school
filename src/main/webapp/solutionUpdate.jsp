<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dawid
  Date: 6/19/19
  Time: 10:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="fragments/header.jspf"%>

<form method="post" action="/solutions/update">
    <div>
        <h2>Prosze wybrac cwiczenie: </h2>
        <select name="exercise" >

            <c:forEach items="${exercises}" var="ex">
                <option
                        <c:if test="${ex.id == exercise.id}">selected</c:if>
                        value="${ex.id}">${ex.title}</option>
            </c:forEach>
        </select>
    </div>
    <br>
    <div>
        <h2>Prosze wybrac uzytkownika: </h2>
        <select name="user">

            <c:forEach items="${users}" var="us">
                <option
                        <c:if test="${us.id == user.id}">selected</c:if>
                        value="${us.id}">${us.username}</option>
            </c:forEach>
        </select>
    </div>
    <br>
    <div>
        <h2>Opis rozwiazania: </h2>
        <textarea name="description" rows="4" cols="50" placeholder="Prosze wpisac opis rozwiazania...">
${description}</textarea>
    </div>
    <br>
    <input type="submit" value="Edytuj rozwiazanie">
</form>
<%@include file="fragments/footer.jspf"%>
</body>
</html>
