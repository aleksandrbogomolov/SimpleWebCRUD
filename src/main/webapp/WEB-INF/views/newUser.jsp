<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Add new User</title>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
<h2>Add new User</h2>
<form:form method="POST" modelAttribute="User">
    <form:input path="id" id="id" type="hidden"/>
    <form:input path="name" id="name"/>
    <form:input path="age" id="age"/>
    <form:checkbox path="admin" id="admin"/>
    <input type="submit">
</form:form>
</body>
</html>
