<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23.04.2021
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ooopss..</title>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/error.css"/>
</head>




<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    Oops!</h1>
                <h2>
                    404 Not Found</h2>
                <div class="error-details">
                    Sorry, city you entered not found or you entered unproper symbols!
                </div>
                <div class="error-actions">
                    <a href="index.jsp" class="btn btn-primary btn-lg">
                        Go Back </a><a href="https://openweathermap.org/" class="btn btn-default btn-lg"> Go to Source website </a>
                </div>
            </div>
        </div>
    </div>
</div>
</html>
