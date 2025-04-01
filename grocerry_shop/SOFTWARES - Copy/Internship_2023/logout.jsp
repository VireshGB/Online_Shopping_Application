<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Online Shapping</title>
  <Link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <script src="js/bootstrap.bundle.min.js" type="text/javascript"> </script>  
</head>
<body>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Shopping Cart</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>

           <%@page import="java.sql.*"%>
           <%@include file="dbcon.jsp" %>


    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">Home</a>
        </li>

        <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">Category</a>
                    
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
    </div>
  </div>
</nav>
                
 


  
<div class="container-fluid bg-warning p-3 mt-2">

  <div class="row">
    <h1 class="text-conter text-white"> Wellcome to Online Shopping</h1>
    <p class="text-center"> <butto type="button success" class="btn btn-outline-success">
    Login Now</butto>button> </p>
  </div>
</div>
<div  class="container-fluid bg-dark" style="margin-top:350px;">
  <div class="row">
    <p class="text-center text-white">&copy copyright Online Shopping 2023</p>
  </div>
</div>
</body>
</html>