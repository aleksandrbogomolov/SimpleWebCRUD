<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <title>List of User</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/style.css"/>
    <script src="../../js/jquery.min.js"></script>
    <%--<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
    <script src="../../js/app.js"></script>
</head>
<body>
<div class="container">

    <form action="findUser" class="form-inline">
        <div class="form-group">
            <input type="search" name="id" placeholder="ID" class="form-control">
        </div>
        <input type="submit" value="Find" class="btn btn-default"/>
        <button class="btn btn-default" type="button" id="coll">
            Add new User
        </button>
        <a href="/" class="btn btn-default" role="button" id="showAll">Show All</a>
    </form>

    <div class="collapse1" id="collapseForm">
        <div class="well">
            <form:form method="POST" modelAttribute="User" cssClass="form-inline">
                <form:input path="id" id="id" type="hidden"/>
                <div class="form-group">
                    <label for="name"></label>
                    <form:input path="name" id="name" cssClass="form-control" placeholder="Name"/>
                </div>
                <div class="form-group">
                    <label for="age"></label>
                    <form:input path="age" id="age" cssClass="form-control" placeholder="Age"/>
                </div>
                <div class="checkbox">
                    <label for="admin">Admin</label>
                    <form:checkbox path="admin" id="admin"/>
                </div>
                <input type="submit" class="btn btn-primary">
                <a href="/" type="button" class="btn btn-warning">Cancel</a>
            </form:form>
        </div>
    </div>

    <display:table name="users" pagesize="5" class="table table-bordered" requestURI="" sort="list" id="row">
        <display:column property="id" title="ID" sortable="true" headerClass="sortable"/>
        <display:column property="name" title="Name" sortable="true" headerClass="sortable"/>
        <display:column property="age" title="Age" sortable="true" headerClass="sortable"/>
        <display:column property="admin" title="Admin" headerClass="sortable"/>
        <display:column property="createDate" title="Create Date" headerClass="sortable"/>
        <display:column title="Service">
            <a href="/editUser-${row.id}" type="button" class="btn btn-info" id="edit">Edit</a>
            <a href="/deleteUser-${row.id}" class="btn btn-danger">Delete</a></display:column>
        <display:setProperty name="paging.banner.placement" value="bottom"/>
    </display:table>

</div>
</body>
</html>
