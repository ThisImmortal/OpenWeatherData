package com.openweather.resources;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class WeatherResource {

public static Map<String, Object> getWeatherData(String location){

    String API_KEY = "c22aa0728c23c1f4a4c8723285c015ff";
    String urlString = "http://api.openweathermap.org/data/2.5/weather?q=" + location + "&appid=" + API_KEY + "&units=metric";

    try{

        StringBuilder responseData = new StringBuilder();
        URL url = new URL(urlString);
        URLConnection connection = url.openConnection();
        BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        String line;

        while ((line = reader.readLine()) != null){

            responseData.append(line);
        }

        reader.close();

        Map<String, Object> responseMap = jsonToMap(responseData.toString());
        Map<String, Object> mainMap = jsonToMap(responseMap.get("main").toString());

        return responseMap;


    }
    catch (IOException e){
        System.out.println(e.getMessage());
        return null;
    }



}




    //helper method
public static Map<String, Object> jsonToMap(String json){

    Map<String, Object> map = new Gson().fromJson(
            json, new TypeToken<HashMap<String, Object>>() {}.getType()
    );
//    Type mapType = new TypeToken<Map<String, Map>>(){}.getType();
//    Map<String, Object> result = new Gson().fromJson(json, mapType);

    return map;
}



}
