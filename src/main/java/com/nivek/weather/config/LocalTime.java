package com.nivek.weather.config;

public class LocalTime {
	
	private String error;
	private String error_message;
	private String time;
	private String timeZone;
	private String offSet;
	private String daylight_savings;
	
	public String getError()
	{
		return this.error;
	}
	
	public String getErrorMessage()
	{
		return this.error_message;
	}
	
	public String getTime()
	{
		return this.time;
	}
	
	public String getTimeZone()
	{
		return this.timeZone;
	}
	
	public String getOffSet()
	{
		return this.offSet;
	}
	
	public String getDaylight_savings()
	{
		return this.daylight_savings;
	}
	

}
