<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="java.net.URL" %>
<%@page import="java.io.*" %>
<%@page import="com.nivek.weather.config.GeoLocation" %>
<%@page import="com.nivek.weather.config.WeatherData" %>
<%@page import="com.nivek.weather.config.LocalTime" %>
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
        
        .button{
        		background-color:Transparent; 
        		color:white; 
        		font-size:1.00em; 
        		font-family:"Courier New",Monospace ;
        		border:none;
        		
        }
        
        .button:Hover{
				font-weight:bold;
				cursor:pointer;
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
			String cityName=request.getParameter("city");
			URL myURL=new URL("http://api.openweathermap.org/data/2.5/weather?q="+cityName+"&APPID=1abbdbc0bd449a1c5fe4f0c67a5681fb&units=imperial");
			InputStreamReader reader=new InputStreamReader(myURL.openStream());
			WeatherData weatherData=new Gson().fromJson(reader,WeatherData.class);
			WeatherData.Weather myWeatherData[]=weatherData.getWeather();
			String weatherDescription=myWeatherData[0].getDescription();
			String weatherMain=myWeatherData[0].getMain();
			String temperature=weatherData.getMain().get("temp");
			String weatherIconID=myWeatherData[0].getIcon();
			String weatherIconSrc="http://openweathermap.org/img/w/"+weatherIconID+".png";
			
			//City time api request
					
		%> 
		<h1 style="text-align:center;color:white;">Weather Forecast for <%=cityName %></h1>
		<p style="text-align:center;">
	    <a href="weather"><img src=<%=weatherIconSrc%> alt="weather" style="width:100px;height:100px;"></a> 
		</p>
		<form action="/CityWeather_c" method="post">
		<input type="hidden" name="city" value="<%=cityName%>">
		<p><%=cityName%> <%=weatherMain %>, <%=weatherDescription %> <%=temperature%>
		<button class="button">°F</button></p>
		</form>
		
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
		
		<div>
		<footer style="position:fixed; bottom:0px; width:100%; height:50px;">
		<p style="text-align:left; font-size:1.0em; font-weight:bold;">Designed and coded by <span style="font-weight:bold; color:rgb(60, 179, 113);">Kevin Lin</span></p>
		</footer>
		</div>
	</body>
</html>

<!-- 51093633299f497a97733440181404 -->