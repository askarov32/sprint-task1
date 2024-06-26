<%@ page import="Models.News" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Models.Event" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/links/links.jsp"%>
</head>
<body>

<div class="container">
    <%
        ArrayList<News> news = (ArrayList<News>) request.getAttribute("news-admin");
        if (news != null) {
            for (News novost : news) {
    %>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title"><%=novost.getName()%></h1>
            <p class="card-text"><%=novost.getContent()%></p>
        </div>
    </div>
    <%
            }
        }
    %>

    <form action="/add-news" method="post">
        <div class="row">
            <div class="col-6 text-md-start" >
                <div class="row">
                    <div class="col-12 mt-3">
                        <label>name</label>
                    </div>
                    <div class="col-12 mt-3">
                        <input type='text' name = 'newsName' class='form-control'>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 mt-3">
                        <label>content</label>
                    </div>
                    <div class="col-12 mt-3">
                        <input type='text' name = 'newsContent' class='form-control'>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 mt-3">
                        <button type="btn" class="btn btn-secondary">add news</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<br>
<br>

<div class="container">
    <%
        ArrayList<Event> events = (ArrayList<Event>) request.getAttribute("events-admin");
        if (news != null) {
            for (Event event : events) {
    %>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title"><%=event.getName()%></h1>
            <p class="card-text"><%=event.getContent()%></p>

        </div>
    </div>
    <%
            }
        }
    %>
    <form action="/add-event" method="post">
        <div class="row">
            <div class="col-6 text-md-start" >
                <div class="row">
                    <div class="col-12 mt-3">
                        <label>name</label>
                    </div>
                    <div class="col-12 mt-3">
                        <input type='text' name = 'eventName' class='form-control'>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 mt-3">
                        <label>content</label>
                    </div>
                    <div class="col-12 mt-3">
                        <input type='text' name = 'eventContent' class='form-control'>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 mt-3">
                        <button type="btn" class="btn btn-secondary">add events</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>

