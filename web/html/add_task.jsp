
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/links/links.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container">
        <form action="/add-task" method="post">
            <div class="row">
                <div class="col-6 text-md-start" >
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>name</label>
                        </div>
                        <div class="col-12 mt-3">
                                <input type='text' name = 'taskName' class='form-control'>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>description</label>
                        </div>
                        <div class="col-12 mt-3">
                            <input type='text' name = 'taskDescription' class='form-control'>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>deadline</label>
                        </div>
                        <div class="col-12 mt-3">
                            <input type='date' name = 'taskDeadline' class='form-control'>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <label>status</label>
                        </div>
                        <div class="col-12 mt-3">
                            <input type='text' name = 'taskStatus' class='form-control'>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 mt-3">
                            <button type="btn" class="btn btn-secondary">add task</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
