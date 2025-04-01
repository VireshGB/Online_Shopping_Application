<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 


String id=request.getParameter("id");
String cat=request.getParameter("t1");


try
{
         int k=stmt.executeUpdate("update  reg set First_name='"+cat+"' where First_name='"+id+"' ");
  
}
catch(Exception e)
{
    out.println(e);
}

%>

<script>
alert("updated  your reg");
  
document.location="reg_view.jsp";
</script>