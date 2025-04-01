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
        <span class="navbar-text text-primary fs-1"> online shopping</span>
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
<%

String s1,s2,s3,s4,s5,s7;

s1=(String)session.getAttribute("s1");
s2=(String)session.getAttribute("s2");
s3=(String)session.getAttribute("s3");
s4=(String)session.getAttribute("s4");
s5=(String)session.getAttribute("s5");

s7=(String)session.getAttribute("s7");
//out.println(s7);

%>
<div class="container-fluid p-3 mt-1">
   <div class="row">
       <form method="post" enctype="multipart/form-data" action="photo_con.jsp">
      <h1 class="text-success">products </h1>
      <div class="mt-3 mb-3">
          
      <div class="mt-3 mb-3">
          <label>product_photo</label>

          <input type="file" name="file" class="form-control w-50 border-primary"required>
      
           <p> <button type="submit" class="btn btn-success">Submit </button> </p>
       </form>
   </div>
</div>

<div class="container-fluid bg-dark" style="margin-top:400px;">
     <div class="row">
        <p class="text-center text-white"> &copy copyright online shapping 2023</p>
     </div>
</div>
</body>
</html>