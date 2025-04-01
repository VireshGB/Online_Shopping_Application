<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 

String s1,s2,s3,s4,s5,s7;

s1=request.getParameter("t1");
session.setAttribute("s1",s1);
s2=request.getParameter("t2");
session.setAttribute("s2",s2);

s3=request.getParameter("t3");
session.setAttribute("s3",s3);

s4=request.getParameter("t4");
session.setAttribute("s4",s4);

s5=request.getParameter("t5");
session.setAttribute("s5",s5);

s7=request.getParameter("t6");
session.setAttribute("s7",s7);

out.println(s5);

try
{
         
	// int k=stmt.executeUpdate("insert into products(category,product_name,Uom,qty,price,image,stock)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
		 		 
}


catch(Exception e)
{
	  out.println(e);
}

%>


        
 <script> 
 //alert("Thank you for your product");        
document.location="upload_products_image.jsp";
</script>