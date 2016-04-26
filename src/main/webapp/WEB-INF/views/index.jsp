<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>List of User</title>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="modal-title text-center">Users list</h2>
    <a href="newUser">Add new User</a>
    <a href="sortById">Sort by Id</a>
    <a href="sortByName">Sort by Name</a>
    <form action="findUser">
        <input type="search" name="id" placeholder="Id">
        <input type="submit" value="Find"/>
    </form>
    <table class="table">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>AGE</th>
            <th>ADMIN</th>
            <th>DATE</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>
                    <c:choose>
                        <c:when test="${user.admin == true}">
                            <input type="checkbox" name="admin" disabled checked/>
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="admin" disabled/>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>${user.createDate}</td>
                <td><a href="<c:url value="/newUser-${user.id}"/>">Edit</a></td>
                <td><a href="<c:url value="/deleteUser-${user.id}"/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
