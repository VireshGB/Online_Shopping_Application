<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 

String s1,s2,s3,s4;

s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");

try
{
         
	int k=stmt.executeUpdate("insert into feedback(user_id,about_prodduct,about_service,comments) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
		 		 
}


catch(Exception e)
{
	  out.println(e);
}

%>


        
 <script> 
 alert("Thank you for your feedback");        
document.location="feedback.html";
</script>