package com.openweather.servlet;

import com.openweather.resources.WeatherResource;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "WeatherServlet", value = "/WeatherServlet")
public class WeatherServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");


        if (action == null){
            action = "refresh";
        }

        String url = "/index.jsp";

        if (action.equals("refresh")){
            url = "/index.jsp";
        }
        else if(action.equals("getForecast")){

            String message = null;
            String location = request.getParameter("location");
            if(location.trim() == null || location.trim().isEmpty()){
                message = "You must write city name!";
                url = "/index.jsp";
            }
            else {
            Map<String, Object> weatherMap = WeatherResource.getWeatherData(location);

            if(weatherMap == null){
                url = "/error.jsp";
            }
            else {

                request.setAttribute("weatherMap", weatherMap);
                url = "/result.jsp";
            }
            }



            request.setAttribute("message", message);



        }

        getServletContext().getRequestDispatcher(url).forward(request,response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }


}
