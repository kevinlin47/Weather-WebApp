package com.nivek.weather.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/weather",method=RequestMethod.GET)
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/weather",method=RequestMethod.POST)
	public ModelAndView getCitySearch(HttpServletResponse response,@RequestParam(value="city")String city) throws IOException
	{	
		return new ModelAndView("CityWeather");
	}
	
	@RequestMapping(value="/CityWeather", method=RequestMethod.GET)
	public ModelAndView displayCityWeather(HttpServletResponse response) throws IOException
	{
		return new ModelAndView("CityWeather");
	}
	{
		
	}
}
