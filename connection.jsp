<%@page import="java.sql.*"%>
<%
Connection cn= null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp10","root","MySql");
	
}
catch(Exception ex)
{
	out.println(ex);
}
%>