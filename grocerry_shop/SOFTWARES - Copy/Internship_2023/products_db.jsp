<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 


String id=request.getParameter("id");
String cat=request.getParameter("t1");


try
{
         int k=stmt.executeUpdate("update  products set id='"+cat+"' where id='"+id+"' ");
  
}
catch(Exception e)
{
    out.println(e);
}

%>

<script>
alert("updated  your products");
  
document.location="products_view.jsp";
</script>