<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isErrorPage="true" %>
<%@ page import="com.c2.SimpleBean.*" %>
<%@page import="java.util.Date"  %>
<%@page import="org.joda.time.Minutes"%>
<%@page import="org.joda.time.Seconds"%>
<%@page import="org.joda.time.Hours"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%! int number=0;
	
	synchronized void countPeople(){
	number++;
	System.out.println(number);
	} %>
<%
	if(session.isNew())
	{
	countPeople();
	String str=String.valueOf(number);
	session.setAttribute("count",str);
	}
Date Now =new Date();
String Hours=String.valueOf(Now.getHours());
String Minutes=String.valueOf(Now.getMinutes());
String Seconds=String.valueOf(Now.getSeconds());

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Session test -  to count how many people accessed current site</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
	<p>payou are the <%=(String)session.getAttribute("count") %> to access current site.</p>
	<p>your IP:<%= request.getRemoteAddr() %>:<%=request.getRemotePort() %>  user:<%=request.getRemoteUser() %></p>
	<p>
		<%out.print(Hours); %>:<%out.print(Minutes); %>:<%out.print(Seconds); %>
	</p>
	<%=exception.getMessage() %>
  </body>
</html>
