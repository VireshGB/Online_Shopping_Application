<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 


String id=request.getParameter("id");
String cat=request.getParameter("t1");


try
{
         int k=stmt.executeUpdate("update  customerorder set id='"+cat+"' where id='"+id+"' ");
  
}
catch(Exception e)
{
    out.println(e);
}

%>

<script>
alert("updated  your category");
  
document.location="customerorder_view.jsp";
</script>