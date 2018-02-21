package com.nivek.weather.config;
import java.util.*;

import com.google.gson.Gson;

public class WeatherData {

	private Map<String,String> coord;
	private Map<String,String> sys;
	private  Weather weather[];
	private Map<String,String> main;
	private Map<String,Double>wind;
	private Map<String,String>rain;
	private Map<String,String>clouds;
	private String dt;
	private String id;
	private String name;
	private String cod;
	
	
	public Weather[] getWeather()
	{
		return this.weather;
	}
	
	public class Weather
	{
		Integer id;
		String main;
		String description;
		String icon;
		
		public String getDescription()
		{
			return this.description;
		}
		
		public String getMain()
		{
			return this.main;
		}
		
		public Integer getID()
		{
			return this.id;
		}
		
		public String getIcon()
		{
			return this.icon;
		}
	}
}
