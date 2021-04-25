<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>

<head>
    <title>Weather forecast for your city</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<body>


    
    <img src="img/image.jpg" width="828" height="271" id="coverPhoto">
    


<form action="weatherServlet" method="get">
    <input type="hidden" name="action" value="getForecast"/>



    <input name="location" placeholder="Type your city" class="form-control"/>
    <br>


    <c:if test="${message != null}">

        <div class="alert alert-danger" role="alert">
                ${message}
        </div>

    </c:if>

    <input type="submit" value="Get Weather Forecast" class="btn btn-primary btn-lg btn-block"/>

</form>
</body>
</html>
