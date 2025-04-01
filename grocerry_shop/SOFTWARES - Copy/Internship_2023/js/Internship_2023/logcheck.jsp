<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>
<%@page import="java.util.Random"%>


<% 


String s1,s2;
s1=request.getParameter("t1");
s2=request.getParameter("t2");

Random rand=new Random();

int randnum=rand.nextInt(1000);

String id=s1.substring(0,2);

//out.println(randnum);

String orderid=id+randnum;

session.setAttribute("orderid",orderid);


try
{
ResultSet rs=stmt.executeQuery("select * from login where username='"+s1+"' ");
if(!rs.next())
{
out.println("<b>user name not found</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");

}
else
{
	  String pwd=rs.getString(3);
	  if(s2.equals(pwd))
	  {
  session.setAttribute("uname",s1);
		
    String type=rs.getString(4);
			
			if(type.equals("admin"))
			{
			%>
			<jsp:forward page = "admin_home.jsp" />
			<%
			}
			if(type.equals("operator"))
			{
			%>
			<jsp:forward page="operator_home.jsp"/>
			<%
			}
			if(type.equals("customer"))
			{
			%>
			<jsp:forward page="customer_home.jsp"/>
			<%
			}
			if(type.equals("account"))
			{
			%>
			<jsp:forward page="account_home.html"/>
			<%
			}
			
			
		}

	else
	{
		out.println("<b>invalid password..</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");
	}
}
}
catch(Exception e)
{
	  out.println(e);
}

%>