<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>OnlineShopping</title>
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
  <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>

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
          <a class="nav-link" href="#">My Order</a>
        </li>



                    <li class="nav-item">
          <a class="nav-link" href="#">Feedback</a>
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
    <h1 class="text-conter text-white"> Wellcome to customer Panel</h1>

    
  </div>
</div>
<div class="container-fluid bg-light p-3 mt-2">

  <div class="row">
    <h1 class="text-center text-primary"> Our Products</h1>
    <hr>

      <%
           
       String id=request.getParameter("id");  
    ResultSet res=stmt.executeQuery("select * from products where category='"+id+"' ");

        while(res.next())
        {
                 
%>




    
    <div class="col-lg-3">
      <h1> <%=res.getString(3)%> </h1>
      <p> <img src="upload/<%=res.getString(7)%>" style="width:100px;height:100px;">  </p>
      <p> Rs.<%=res.getString(6)%>/-</p>

      <p><button class="btn btn-warning"><a href="cart.jsp?id=<%=res.getString(1)%>"> Add Cart  </a>  </button> </p>
    </div>
    <% } %>
<div  class="container-fluid bg-dark" style="margin-top:350px;">
  <div class="row">
    <p class="text-center text-white">&copy copyright Online Shapping 2023</p>
  </div>
</div>
</body>
</html>

    </ul>
  </div>
</nav>
</body>
</html>

<div class+"container-fluid bg-warning p-3 mt-2">
  <div class="row">
    <h1 class="text-center text-white"> Welcome to customer panel</h1>
    
    </div>
  </div>
  <div class="container-fluid bg-dart" style="margin-top:100px;">
    <div class="row">
      </div>
      </div>