package com.nivek.weather.config;

public class GeoLocation {
	
	private String ip;
	private String city;
	private String region;
	private String region_code;
	private String country;
	private String country_name;
	private String continent_code;
	private String postal;
	private String latitude;
	private String longitude;
	private String timezone;
	private String utc_offset;
	private String country_calling;
	private String currency;
	private String asn;
	private String org;
	
	public String getCity()
	{
		return this.city;
	}
	
	public String getLon()
	{
		return this.longitude;
	}
	
	public String getLat()
	{
		return this.latitude;
	}
	
	public String getIP()
	{
		return this.ip;
	}
	
	public String getRegion()
	{
		return this.region;
	}
	
	public String getRegionCode()
	{
		return this.region_code;
	}
	
	public String getCountry()
	{
		return this.country;
	}
	
	public String getCountryName()
	{
		return this.country_name;
	}
	
	public String getOrg()
	{
		return this.org;
	}
	
	public String getAsn()
	{
		return this.asn;
	}
	
	public String getContinentCode()
	{
		return this.continent_code;
	}
	
	public String getPostal()
	{
		return this.postal;
	}
	
	public String getTimeZone()
	{
		return this.timezone;
	}
	
	public String getUtcOffset()
	{
		return this.utc_offset;
	}
	
	public String getCurrency()
	{
		return this.currency;
	}
	
	public String getCountryCalling()
	{
		return this.country_calling;
	}
}
