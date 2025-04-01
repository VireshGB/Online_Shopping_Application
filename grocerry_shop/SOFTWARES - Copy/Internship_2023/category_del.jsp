<%@page import="java.sql.*"%>
<%@ include file="dbcon.jsp" %>

<%

String s1=request.getParameter("id");


int k=stmt.executeUpdate("delete from reg where id='"+s1+"' ");

 

%>
<script>
alert("Deleted successfully..");
document.location="category_view.jsp";
</script>