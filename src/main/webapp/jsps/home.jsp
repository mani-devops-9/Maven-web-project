<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manikanta Home Page</title>
<link href="images/Manikanta.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to  AWS Devops with Manikanta</h1>
<h1 align="center"> Mani_kanta The DevOps Trainer</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/manikanta.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Manikanta, 
		Jublihills, Hyderabad,
		Hyderabad,
		+91-9381292271,+91-8341292271
		mpusunuri@gmail.com
		<br>
		<a href="mailto:mpusunuri@gmail.com">Mail to Manikanta</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>Manikanta Training, Development Center.</p>
<p align=center><small>Copyrights 2024 by <a href="google.com/">Manikanta</a> </small></p>

</body>
</html>
