<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Internship</title>
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'>
    <script src="js/bootstrap.bundel.min.js" type="text/javascript"> </script>

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <span class="navbar-text text-primary fs-1"> online shapping</span>
        <ul class="navbar-nav">
            <li> <a href="" class="nav-link"> Home</a> </li>
            <li> <a href="" class="nav-link"> About</a> </li>
            <li> <a href="" class="nav-link"> Services</a> </li>
            <li> <a href="" class="nav-link"> Contact</a> </li>
            <li> <a href="" class="nav-link"> Login</a> </li>
            <li> <a href="" class="nav-link"> Help</a> </li>
        </ul>
    </div>
</nav>

<div class="container-fluid p-3 mt-1">
   <div class="row">
       
      <h1 class="text-success"> reg details </h1>
      <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <th> First Name </th>
            <th> Last Name </th>
            <th>Gender </th>
            <th>Address </th>
            <th>pincode</th>
            <th>Email</th>
            <th>Mobile No</th>
            <th>Profile Photo</th>
            <th>Action</th>
            <th>Action</th>
        </thead>

        <tbody>
            <%
           
         
    ResultSet res=stmt.executeQuery("select * from reg");

        while(res.next())
        {
                 
%>
            <tr>
                <td><%=res.getString(1)%></td>
                <td><%=res.getString(2)%> </td>
                <td><%=res.getString(3)%> </td>
                <td><%=res.getString(4)%> </td>
                <td><%=res.getString(5)%> </td> 
                <td><%=res.getString(6)%> </td> 
                <td><%=res.getString(7)%> </td>     
                <td><%=res.getString(8)%> </td> 
                <td><a href="reg_del.jsp?id=<%=res.getString(1)%>"> delete </a> </td>   
                <td><a href="reg_edit.jsp?id=<%=res.getString(1)%>"> edit </a> </td>   
  
  
            </tr>
            <% 

      }

%>
        </tbody>
          
      </table>
      
   </div>
</div>

<div class="container-fluid bg-dark" style="margin-top:600px;">
     <div class="row">
        <p class="text-center text-white"> &copy copyright online shapping 2023</p>
     </div>
</div>
</body>
</html>