<%@ page import="classes.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tasks</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <%@ include file="/vendor/head.jsp" %>
</head>
<body>
<%@ include file="/vendor/navbar.jsp" %>
</body>
<div class="container mt-3">
    <div class="row">
        <% Tasks task = (Tasks) request.getAttribute("zadacha");
            if (task != null) { %>
        <div class="col">
            <label class="form-label">Name of Task:</label>
            <input type="text" name="name" class="form-control" value="<%= task.getName() %>" readonly>
            <label class="form-label">Description:</label>
            <input type="text" name="description" class="form-control" value="<%= task.getDescription() %>" readonly>
            <label class="form-label">DeadLine:</label>
            <input type="date" name="deadLine" class="form-control" value="<%= task.getDeadlineDate() %>" readonly>
        </div>
        <% } %>
    </div>
    <div class="row">
        <div class="col-3 mt-2">
            <button type="button" class="btn btn-success" data-bs-dismiss="modal">Save</button>
        </div>
        <div class="col-3 mt-2">
            <form action="/deleteTask" method="post">
                <input type="hidden" name="id" value="<%= task.getId() %>">
                <button type="submit" class="btn btn-primary">Delete task</button>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
