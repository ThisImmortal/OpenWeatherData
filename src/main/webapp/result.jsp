<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 21.04.2021
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Weather forecast for ${weatherMap['name']}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>




</head>
<body>

<jsp:useBean id="now" class="java.util.Date"/>




    <table class="table table-hover table-bordered">
        <tr>
            <th scope="col">Weather forecast for ${weatherMap['name']} (${weatherMap['sys']['country']}) for ${now}</th>
            <th scope="col"><img src="http://openweathermap.org/img/wn/${weatherMap['weather'][0]['icon']}.png"></th>

        </tr>
        <tr>
            <td>City geo location, longitude</td>
            <td>${weatherMap['coord']['lon']}</td>
        </tr>
        <tr>
            <td>City geo location, latitude</td>
            <td>${weatherMap['coord']['lat']}</td>
        </tr>

        <tr>
            <td>Temperature</td>
            <td>${weatherMap['main']['temp']}℃</td>
        </tr>

        <tr>
            <td>Pressure</td>
            <td>${weatherMap['main']['pressure']}</td>
        </tr>

        <tr>
            <td>Humidity</td>
            <td>${weatherMap['main']['humidity']}</td>
        </tr>

        <tr>
            <td>Wind speed</td>
            <td>${weatherMap['wind']['speed']}</td>
        </tr>

        <tr>
            <td>Wind direction</td>
            <td>${weatherMap['wind']['deg']}</td>
        </tr>

        <tr>
            <td>Clouds</td>
            <td>${weatherMap['clouds']['all']}</td>
        </tr>

        <tr>
            <td>Rain</td>
            <td>${weatherMap['rain']['1h']}</td>
        </tr>

        <tr>
            <td>Snow</td>
            <td>${weatherMap['snow']['1h']}</td>
        </tr>


    </table>

    <a href="${pageContext.request.contextPath}/"><button class="btn btn-primary">Go back</button></a>



</body>
</html>
