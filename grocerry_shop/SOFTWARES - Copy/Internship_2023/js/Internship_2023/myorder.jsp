<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Internship</title>
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'>
    <script src="js/bootstrap.bundel.min.js" type="text/javascript"> </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Shopping Cart</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>

           


    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">Home</a>
        </li>
 



                   <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">category</a>
                    
                    <div class="dropdown-menu bg-primary m-0">
 
                          <%

                            ResultSet rs=stmt.executeQuery("select distinct(category) from products");

                            while(rs.next())
                            {


                          %>

                        <a href="catwise_products.jsp?id=<%=rs.getString(1)%>" class="dropdown-item bg-primary text-white"><%=rs.getString("category")%></a>

                        <% } %>

                       
                        
                        
                        


                    </div>
                    
                </div>

       
                   <div class="nav-item dropdown">
                    
                 

                </div>

                

                    

                   <li class="nav-item">
          <a class="nav-link" href="myorder.jsp">My Order</a>
        </li>

                    <li class="nav-item">
          <a class="nav-link" href="feed.jsp">Feedback</a>
        </li>


         <li class="nav-item">
          <a class="nav-link" href="index.html">Logout</a>
        </li>

                    

                     </ul>
    </div
  </div>
</nav>

<div class="container-fluid p-3 mt-1">
   <div class="row">
       
      <h1 class="text-success"> customerorder details </h1>
      <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <th> user_id </th>
            <th> product_id </th>
            <th> product_name</th>
            <th> uom</th>
            <th>qty</th>
            <th>price</th>
            <th>total</th>
            <th>order_status</th>
            <th>order_date</th>
            <th>order_time</th>
            <th>payment_status</th>
            <th>Action</th>
            <th>Action</th>
        </thead>

        <tbody>
            <%
           
     String uname=(String)session.getAttribute("uname");  
    ResultSet res=stmt.executeQuery("select * from customerorder where user_id='"+uname+"' ");

        while(res.next())
        {
                 
%>
            <tr>
                <td><%=res.getString(1)%> </td>
                <td><%=res.getString(2)%> </td>
                <td><%=res.getString(3)%> </td>
                <td><%=res.getString(4)%> </td>
                <td><%=res.getString(5)%> </td> 
                <td><%=res.getString(6)%> </td> 
                <td><%=res.getString(7)%> </td>  
                <td><%=res.getString(8)%> </td> 
                <td><%=res.getString(9)%> </td> 
                <td><%=res.getString(10)%> </td> 
                <td><%=res.getString(11)%> </td> 
                 <td><a href="customerorder_delete.jsp?id=<%=res.getString(1)%>">  <i style="font-size:80px;"class="fa fa-trash fs-1 p-3 text-danger"> </i></a></td> 
                  <td><a href="customerorder_edit.jsp?id=<%=res.getString(1)%>"> <i style="font-size:80px;"class="fa fa-edit fs-1 p-3 text-danger"> </i> </a></td>   
      
    
   

            </tr>
            <% 

      }

%>
        </tbody>
          
      </table>
      
   </div>
</div>

<div class="container-fluid bg-dark" style="margin-top:100px;">
     <div class="row">
        <p class="text-center text-white"> &copy copyright online shapping 2023</p>
     </div>
</div>
</body>
</html>