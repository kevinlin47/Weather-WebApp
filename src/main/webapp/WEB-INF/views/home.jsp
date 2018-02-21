<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="java.net.URL" %>
<%@page import="java.io.*" %>
<%@page import="com.nivek.weather.config.GeoLocation" %>
<%@page import="com.nivek.weather.config.WeatherData" %>
<%@page import="java.util.*;" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Weather Forecast</title>
        
        h1{
        		text-align:center;
        		font-family: "Times New Roman", Times, serif;
        }
        
        body{
        		background-color:SlateBlue;
        }
        
        h1{
        		font-family: "Lucida Console", Arial, Monospace;
        }
        
    </style>
        
    </head>
	<body>
		<%
			URL myURL=new URL("https://ipapi.co/json/");
			InputStreamReader reader=new InputStreamReader(myURL.openStream());
			GeoLocation geoLocation=new Gson().fromJson(reader,GeoLocation.class);
			String userLocation=geoLocation.getCity();
			
			String lat=geoLocation.getLat();
			String lon=geoLocation.getLon();
			
			myURL=new URL("http://api.openweathermap.org/data/2.5/weather?APPID=1abbdbc0bd449a1c5fe4f0c67a5681fb&lat="+lat+"&lon="+lon+"&units=imperial");
			reader=new InputStreamReader(myURL.openStream());
			WeatherData weatherData=new Gson().fromJson(reader,WeatherData.class);
			WeatherData.Weather myWeatherData[]=weatherData.getWeather();
			String weatherDescription=myWeatherData[0].getDescription();
			String weatherMain=myWeatherData[0].getMain();
			
			
		%>
		<h1 style="text-align:center;color:white;">Weather Forecast for <%=userLocation %></h1>
		<p><%=weatherMain %> <%=weatherDescription %></p>
	</body>
</html>

<!-- Weather api key -->
<!-- 1abbdbc0bd449a1c5fe4f0c67a5681fb -->
<!-- http://api.openweathermap.org/data/2.5/weather?APPID=1abbdbc0bd449a1c5fe4f0c67a5681fb&lat=40.4835&lon=-74.4432 -->
<!-- http://openweathermap.org/img/w/10d.png -->