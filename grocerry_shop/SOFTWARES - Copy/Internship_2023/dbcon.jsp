<%@page import="java.sql.*"%>

<%!Connection con;%>
<%!Statement stmt;%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_cart","root","");
stmt=con.createStatement();
}
catch(Exception e)
{
out.println(e);
}
%>