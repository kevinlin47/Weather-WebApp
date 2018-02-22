<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="java.net.URL" %>
<%@page import="java.io.*" %>
<%@page import="com.nivek.weather.config.GeoLocation" %>
<%@page import="com.nivek.weather.config.WeatherData" %>
<%@page import="java.util.*" %>
<%@page import="java.time.LocalDateTime" %>

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
        
        @import url(https://fonts.googleapis.com/css?family=Open+Sans);
        
        body{
        		background-color:SlateBlue;
        }
        
        h1{
        		font-family: "Lucida Console", Arial, Monospace;
        }
        
        p{
        		text-align:center;
        		color:white;
        		font-family: "Courier New",Monospace;
        		font-size: 1.875em;
        }
        
        .search{
        		width:100%;
        		position:relative;
        }
        
        .searchTerm{
        	 	float: left;
  			width: 100%;
  			border: 3px solid #00B4CC;
  			padding: 5px;
  			height: 20px;
  			border-radius: 5px;
  			outline: none;
  			color: #9DBFAF;
        }
        
        .searchTerm:focus{
  			color: #00B4CC;
		}
		
		.searchButton {
  			position: absolute;  
  			right: -50px;
  			width: 40px;
  			height: 36px;
  			border: 1px solid #00B4CC;
  			background: #00B4CC;
  			text-align: center;
  			color: #fff;
  			border-radius: 5px;
  			cursor: pointer;
  			font-size: 20px;
		}
		
		.wrap{
  			width: 30%;
  			position: absolute;
  			top: 50%;
  			left: 50%;
  			transform: translate(-50%, -50%);
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
			String temperature=weatherData.getMain().get("temp");
			
			LocalDateTime ldt=LocalDateTime.now();
			String hour=Integer.toString(ldt.getHour());
			String min=Integer.toString(ldt.getMinute());
			
			
		%>
		<h1 style="text-align:center;color:white;">Weather Forecast for <%=userLocation %></h1>
		<p><%=hour+":"+min %> <%=weatherMain %>, <%=weatherDescription %> <%=temperature%>°F</p>
		
		<div>
		</div>
	</body>
</html>

<!-- Weather api key -->
<!-- 1abbdbc0bd449a1c5fe4f0c67a5681fb -->
<!-- http://api.openweathermap.org/data/2.5/weather?APPID=1abbdbc0bd449a1c5fe4f0c67a5681fb&lat=40.4835&lon=-74.4432 -->
<!-- http://openweathermap.org/img/w/10d.png -->