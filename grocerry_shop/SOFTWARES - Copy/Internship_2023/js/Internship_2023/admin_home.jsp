<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Online Shapping</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<script src="js/bootstrap.bundle.min.js" type="text/javascript"> </script>	
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
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">Category</a>
                    
                    <div class="dropdown-menu bg-primary m-0">
                        <a href="category.html" class="dropdown-item bg-primary text-white">menu</a>
                        <a href="category_view.jsp" class="dropdown-item bg-primary text-white">View</a>


                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">Product</a>
                    
                    <div class="dropdown-menu bg-primary m-0">
                        <a href="products.html" class="dropdown-item bg-primary text-white">Add</a>
                        <a href="products_view.jsp" class="dropdown-item bg-primary text-white">View</a>

                    </div>
                </div>
      </ul>
    </div>
  </div>
</nav>		

<div class="container-fluid bg-warning p-3 mt-2">

	<div class="row">
		<h1 class="text-conter text-white"> Wellcome to Admin Panel</h1>
		
	</div>
</div>
<div  class="container-fluid bg-dark" style="margin-top:350px;">
	<div class="row">
		<p class="text-center text-white">&copy copyright Online Shapping 2023</p>
	</div>
</div>
</body>
</html>