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
<div class="container-fluid p-3 mt-1">
   <div class="row">
       <form method='POST' action="feedback_insert.jsp">
           
      <h1 class="text-success"> feedback </h1>
           
  
      <div class="mt-3 mb-3">
        <label> user_id </label>
        <input type="text" name="t1" class="form-control w-50 border-primary" required>
      </div>
           <div class="mt-3 mb-3">
        <label> about_product </label>
        <input type="text" name="t2" class="form-control w-50 border-primary" required>
      </div>
           <div class="mt-3 mb-3">
        <label> about_service </label>
        <input type="text" name="t3" class="form-control w-50 border-primary" required>
      </div>
           <div class="mt-3 mb-3">
        <label> comments</label>
        <input type="text" name="t4" class="form-control w-50 border-primary" required>
      </div>
       
           <p> <button type="submit" class="btn btn-success">Submit </button> </p>
       </form>
   </div>
</div>
<div class="container-fluid bg-dark" style="margin-top:100px;">
     <div class="row">
        <p class="text-center text-white"> &copy copyright online shopping system 2023</p>
     </div>
</div>
</body>
</html>