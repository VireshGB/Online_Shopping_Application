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
    <%
     
     String id=request.getParameter("id");

    ResultSet res=stmt.executeQuery("select * from category where category_name='"+id+"' ");

    res.next();
    %>
   <div class="row">
       <form method='POST' action="category_insert.jsp">
      <h1 class="text-success">category </h1>
      <div class="mt-3 mb-3">
          <label>category_name</label>
          <input type="text" name="t1" class="form-control w-50 border-primary"required>
      </div>
      
           <p> <button type="submit" class="btn btn-success">Submit </button> </p>
       </form>
   </div>
</div>

<div class="container-fluid bg-dark" style="margin-top:270px;">
     <div class="row">
        <p class="text-center text-white"> &copy copyright online shapping 2023</p>
     </div>
</div>
</body>
</html>