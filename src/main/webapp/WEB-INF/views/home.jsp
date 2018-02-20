<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="java.net.URL" %>
<%@page import="java.io.*" %>
<%@page import="com.nivek.weather.config.GeoLocation" %>

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
			URL myURL=new URL("http://api.ipinfodb.com/v3/ip-city/?key=f826aa7a37ddda8015e3a24b2d0c1c3908f7e750de1510d27b759cb6c5ca28a0&format=json");
			InputStreamReader reader=new InputStreamReader(myURL.openStream());
			GeoLocation geoLocation=new Gson().fromJson(reader,GeoLocation.class);
			String userLocation=geoLocation.getCityName();
		%>
		<h1 style="text-align:center;color:white;">Weather Forecast for <%=userLocation %></h1>
	</body>
</html>

<!-- GeoLocation api key -->
<!-- f826aa7a37ddda8015e3a24b2d0c1c3908f7e750de1510d27b759cb6c5ca28a0 -->
<!-- http://api.ipinfodb.com/v3/ip-city/?key=YOUR_API_KEY&ip=IP_V4_OR_IPV6_ADDRESS -->