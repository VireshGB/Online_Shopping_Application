<%@page import="java.sql.*"%>
<%@ include file="dbcon.jsp" %>

<%

String s1=request.getParameter("First_name");


int k=stmt.executeUpdate("delete from reg where First_name='"+s1+"' ");

 

%>
<script>
alert("Deleted successfully..");
document.location="reg_view.jsp";
</script>