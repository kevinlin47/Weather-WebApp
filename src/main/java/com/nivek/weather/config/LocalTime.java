package com.nivek.weather.config;

public class LocalTime {
	
	private Integer error;
	private String error_message;
	private String time;
	private String timezone;
	private String offset;
	private String daylight_savings;
	
	public Integer getError()
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
		return this.timezone;
	}
	
	public String getOffSet()
	{
		return this.offset;
	}
	
	public String getDaylight_savings()
	{
		return this.daylight_savings;
	}
	

}
