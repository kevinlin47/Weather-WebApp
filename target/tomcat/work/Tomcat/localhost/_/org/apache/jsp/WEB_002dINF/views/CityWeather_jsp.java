/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-02-24 05:28:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.net.URL;
import java.io.*;
import com.nivek.weather.config.GeoLocation;
import com.nivek.weather.config.WeatherData;
import java.util.*;
import java.time.LocalDateTime;

public final class CityWeather_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML >\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Open+Sans\">\r\n");
      out.write("    <link href=\"http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css\" \r\n");
      out.write("  \trel=\"stylesheet\"  type='text/css'>\r\n");
      out.write("    <style>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <title>Weather Forecast</title>\r\n");
      out.write("        \r\n");
      out.write("        h1{\r\n");
      out.write("        \t\ttext-align:center;\r\n");
      out.write("        \t\tfont-family: \"Times New Roman\", Times, serif;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        body{\r\n");
      out.write("        \t\tbackground-color:SlateBlue;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        h1{\r\n");
      out.write("        \t\tfont-family: \"Lucida Console\", Arial, Monospace;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        p{\r\n");
      out.write("        \t\ttext-align:center;\r\n");
      out.write("        \t\tcolor:white;\r\n");
      out.write("        \t\tfont-family: \"Courier New\",Monospace;\r\n");
      out.write("        \t\tfont-size: 1.875em;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        .search{\r\n");
      out.write("        \t\twidth:100%;\r\n");
      out.write("        \t\tposition:relative;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        .searchTerm{\r\n");
      out.write("        \t \tfloat: left;\r\n");
      out.write("  \t\t\twidth: 100%;\r\n");
      out.write("  \t\t\tborder: 3px solid #00B4CC;\r\n");
      out.write("  \t\t\tpadding: 5px;\r\n");
      out.write("  \t\t\theight: 20px;\r\n");
      out.write("  \t\t\tborder-radius: 5px;\r\n");
      out.write("  \t\t\toutline: none;\r\n");
      out.write("  \t\t\tcolor: #9DBFAF;\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        .searchTerm:focus{\r\n");
      out.write("  \t\t\tcolor: #00B4CC;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t.searchButton {\r\n");
      out.write("  \t\t\tposition: absolute;  \r\n");
      out.write("  \t\t\tright: -50px;\r\n");
      out.write("  \t\t\twidth: 40px;\r\n");
      out.write("  \t\t\theight: 36px;\r\n");
      out.write("  \t\t\tborder: 1px solid #00B4CC;\r\n");
      out.write("  \t\t\tbackground: #00B4CC;\r\n");
      out.write("  \t\t\ttext-align: center;\r\n");
      out.write("  \t\t\tcolor: #fff;\r\n");
      out.write("  \t\t\tborder-radius: 5px;\r\n");
      out.write("  \t\t\tcursor: pointer;\r\n");
      out.write("  \t\t\tfont-size: 20px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t.wrap{\r\n");
      out.write("  \t\t\twidth: 30%;\r\n");
      out.write("  \t\t\tposition: absolute;\r\n");
      out.write("  \t\t\ttop: 50%;\r\n");
      out.write("  \t\t\tleft: 50%;\r\n");
      out.write("  \t\t\ttransform: translate(-50%, -50%);\r\n");
      out.write("\t\t}\r\n");
      out.write("    </style>\r\n");
      out.write("        \r\n");
      out.write("    </head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t");

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
			
			LocalDateTime ldt=LocalDateTime.now();
			String hour=Integer.toString(ldt.getHour());
			String min=Integer.toString(ldt.getMinute());

				
		
      out.write("\r\n");
      out.write("\t\t<h1 style=\"text-align:center;color:white;\">Weather Forecast for ");
      out.print(cityName );
      out.write("</h1>\r\n");
      out.write("\t\t<p style=\"text-align:center;\">\r\n");
      out.write("\t\t<img src=");
      out.print(weatherIconSrc);
      out.write(" alt=\"weather\" style=\"width:200px;height:200px;\">\r\n");
      out.write("\t\t</p>\r\n");
      out.write("\t\t<p>");
      out.print(hour+":"+min );
      out.write(' ');
      out.print(weatherMain );
      out.write(',');
      out.write(' ');
      out.print(weatherDescription );
      out.write(' ');
      out.print(temperature);
      out.write("°F</p>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"wrap\">\r\n");
      out.write("\t\t <div class=\"search\">\r\n");
      out.write("\t\t <input type=\"text\" class=\"searchTerm\" placeholder=\"Search for location\">\r\n");
      out.write("\t\t <button type=\"submit\" value=\"Submit\" class=\"searchButton\">\r\n");
      out.write("\t\t <i class=\"fa fa-search\"></i>\r\n");
      out.write("\t\t </button>\r\n");
      out.write("\t\t </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
