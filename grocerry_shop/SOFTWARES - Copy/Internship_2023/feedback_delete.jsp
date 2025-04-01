<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 

String s1,s2;

s1=request.getParameter("user_id");

s2=request.getParameter("about_products");

try
{
   
     int k=stmt.executeUpdate("delete from feedback where user_id='"+s1+"' and about_products='"+s2+"' ");     
		 		 
}


catch(Exception e)
{
	  out.println(e);
}

%>

<script>
document.location="feedback_details.jsp";
</script>
