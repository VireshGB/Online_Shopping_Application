<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 

String s1;

s1=request.getParameter("t1");

try
{
         
	int k=stmt.executeUpdate("insert into category(category_name)values('"+s1+"')");
		 		 
}


catch(Exception e)
{
	  out.println(e);
}

%>


        
 <script> 
 alert("Thank you for your product");        
document.location="category.html";
</script>