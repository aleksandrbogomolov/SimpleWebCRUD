<%@page contentType="text/html; charset=utf-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>List of User</title>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
<h2>Users list</h2>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>AGE</th>
        <th>ADMIN</th>
        <th>DATE</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td>${user.isAdmin}</td>
            <td>${user.createDate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
