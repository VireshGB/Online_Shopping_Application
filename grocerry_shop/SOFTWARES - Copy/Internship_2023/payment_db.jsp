<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 


String id=request.getParameter("id");
String cat=request.getParameter("t1");


try
{
         int k=stmt.executeUpdate("update  payment set id='"+cat+"' where id='"+id+"' ");
  
}
catch(Exception e)
{
    out.println(e);
}

%>

<script>
alert("updated  your payment");
  
document.location="payment_view.jsp";
</script>