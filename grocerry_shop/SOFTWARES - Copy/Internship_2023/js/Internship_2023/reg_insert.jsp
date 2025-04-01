<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 

String s1,s2,s3,s4,s5,s6,s7,s8;

s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");
s8=request.getParameter("t8");

try
{
         
	int k=stmt.executeUpdate("insert into reg(First_name,Last_name,Gender,Address,Pincode,Email,Mobile_No,Profile_Photo) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
		 

		 int =stmt.executeUpdate("insert into login(username,password,utype) values('"+s6+"','"+s7+"','customer')");
		 		 		 
}


catch(Exception e)
{
	  out.println(e);
}

%>


        
 <script> 
 alert("Thank you for your reg");        
document.location="reg.html";
</script>