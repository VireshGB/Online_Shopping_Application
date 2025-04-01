<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 

String uname;

uname=(String)session.getAttribute("uname");

String pid=request.getParameter("id");




try
{

	      ResultSet res=stmt.executeQuery("select * from products where id='"+pid+"' ");

          res.next();

          String pname=res.getString(3);
          String uom=res.getString(4);
          String price=res.getString(7);

         int k=stmt.executeUpdate("insert into customerorder(user_id,product_id,product_name,uom,qty,price,total,order_status,order_date,order_time	,payment_status) values('"+uname+"','"+pid+"','"+pname+"','"+uom+"','1','"+price+"','"+price+"','pending',curdate(),curtime(),'pending')");
	
}
catch(Exception e)
{
	  out.println(e);
}

%>

<script>
	alert("Add to cart successfully");
	document.location="catwise_products.jsp";
</script>