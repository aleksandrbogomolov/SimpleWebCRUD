<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Add new User</title>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>"/>
</head>
<body>
<div class="container">
    <h2 class="text-center">Add new User</h2>
    <form:form method="POST" modelAttribute="User" cssClass="form-inline text-center">
        <form:input path="id" id="id" type="hidden"/>
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="name" id="name" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label for="age">Age</label>
            <form:input path="age" id="age" cssClass="form-control"/>
        </div>
        <div class="checkbox">
            <label for="admin">Admin</label>
            <form:checkbox path="admin" id="admin"/>
        </div>
        <input type="submit" class="btn btn-default">
        <a href="/" class="btn btn-primary">Back to Users list</a>
    </form:form>
</div>
</body>
</html>
