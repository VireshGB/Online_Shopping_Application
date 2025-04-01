<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 

String s1,s2,s3,s4;

s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
;

try
{
         
	int k=stmt.executeUpdate("insert into login(username,password,utype) values('"+s1+"','"+s2+"','"+s3+"')");
		 		 
}


catch(Exception e)
{
	  out.println(e);
}

%>


        
 <script> 
 alert("Thank you for your login");        
//document.location="login.html";
</script>