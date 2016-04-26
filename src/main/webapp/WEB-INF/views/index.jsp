<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
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
    <form action="findUser">
        <input type="search" name="id" placeholder="Id">
        <input type="submit" value="Find"/>
    </form>
    <display:table name="users" pagesize="5" class="table" requestURI="" sort="list" id="row">
        <display:column property="id" title="ID" sortable="true" headerClass="sortable"/>
        <display:column property="name" title="Name" sortable="true" headerClass="sortable"/>
        <display:column property="age" title="Age" sortable="true" headerClass="sortable"/>
        <display:column property="admin" title="Admin" headerClass="sortable"/>
        <display:column property="createDate" title="Create Date" headerClass="sortable"/>
        <display:column title="Service"><a href="/newUser-${row.id}">Edit </a><a href="/deleteUser-${row.id}"> Delete</a></display:column>
        <display:setProperty name="paging.banner.placement" value="bottom"/>
    </display:table>
</div>
</body>
</html>