<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="java.net.URL" %>
<%@page import="java.io.*" %>
<%@page import="com.nivek.weather.config.GeoLocation" %>
<%@page import="com.nivek.weather.config.WeatherData" %>
<%@page import="java.util.*" %>
<%@page import="java.time.LocalDateTime" %>

<!DOCTYPE HTML >
<html>
    <head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" 
  	rel="stylesheet"  type='text/css'>
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
			String weatherIconID=myWeatherData[0].getIcon();
			String weatherIconSrc="http://openweathermap.org/img/w/"+weatherIconID+".png";
			
			LocalDateTime ldt=LocalDateTime.now();
			String hour=Integer.toString(ldt.getHour());
			String min=Integer.toString(ldt.getMinute());

				
		%>
		<h1 style="text-align:center;color:white;">Weather Forecast for <%=userLocation %></h1>
		<p style="text-align:center;">
		<img src=<%=weatherIconSrc%> alt="weather" style="width:200px;height:200px;">
		</p>
		<p><%=hour+":"+min %> <%=weatherMain %>, <%=weatherDescription %> <%=temperature%>°F</p>
		
		<form action="/CityWeather" method="post">
		<div class="wrap">
		 <div class="search">
		 <input type="text" name="city" class="searchTerm" placeholder="Search for location">
		 <button type="submit" class="searchButton">
		 <i class="fa fa-search"></i>
		 </button>
		 </div>
		</div>
		</form>
	</body>
</html>

<!-- Weather api key -->
<!-- 1abbdbc0bd449a1c5fe4f0c67a5681fb -->
<!-- http://api.openweathermap.org/data/2.5/weather?APPID=1abbdbc0bd449a1c5fe4f0c67a5681fb&lat=40.4835&lon=-74.4432 -->
<!-- http://api.openweathermap.org/data/2.5/weather?q=longbranch&APPID=1abbdbc0bd449a1c5fe4f0c67a5681fb&units=imperial -->
<!-- http://openweathermap.org/img/w/10d.png -->