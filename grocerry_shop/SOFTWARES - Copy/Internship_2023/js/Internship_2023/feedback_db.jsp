<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 


String id=request.getParameter("id");
String cat=request.getParameter("t1");


try
{
         int k=stmt.executeUpdate("update  feedback set id='"+cat+"' where id='"+id+"' ");
  
}
catch(Exception e)
{
    out.println(e);
}

%>

<script>
alert("updated  your category");
  
document.location="feedback_view.jsp";
</script>