<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Shoppe Bootstarp Website Template | Registration :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
</head>
<body>
<!-- header_top -->
<div class="top_bg">
<div class="container">
<div class="header_top">
	<div class="top_left">
	</div>
	<div class="top_right">
		<ul>
			
		</ul>
	</div>
	<div class="clearfix"></div>
</div>
</div>
</div>
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
		<div class="logo">
			<a href="index.html"><img src="images/logo.png" alt=""/> </a>
		</div>
		<!-- start header_right -->
		<div class="header_right">
		<div class="create_btn">
			<a class="arrow"  href="index.html">Logout<img src="images/right_arrow.png" alt=""/>  </a>
		</div>
		<ul class="icon1 sub-icon1 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				
			</li>
		</ul>
		<ul class="icon1 sub-icon1 profile_img">
			<li><a class="active-icon c1" href="#"> </a>
				
			</li>
		</ul>
		<div class="search">
		    <form>
		    	<input type="text" value="" placeholder="search...">
				<input type="submit" value="">
			</form>
		</div>
		<div class="clearfix"></div>
		</div>
		<!-- start header menu -->
		<ul class="megamenu skyblue">
			<li><a class="color1" href="admin_home.jsp">Home</a></li>
			
			<li class="active grid"><a class="color4" href="product.jsp">Add New Product</a>
				
				</li>				
				<li><a class="color5" href="product_view.jsp">Product Details</a>
				
				</li>
                <li><a class="color5" href="registered_customers_view.jsp">Registered Customer Details</a>
				
				</li>
                
                 <li><a class="color5" href="customers_order_view.jsp">Order Details</a>
				
				</li>
                
                 <li><a class="color5" href="feedback_view.jsp">Customers Feedback</a>
				
				</li>
                
				
			
				
				
		 </ul>
    </div>
</div>
</div>
<!-- content -->
<div class="container">
<div class="main">
	<!-- start registration -->
	<div class="registration">
		<div class="registration_left">
		<h2 align="center">Upload product Image</h2>
        <%
	
String s1,s2,s3,s4,s5,s6,s7,s9,s10,s11;

s1=(String)session.getAttribute("s1");
s2=(String)session.getAttribute("s2");
s3=(String)session.getAttribute("s3");
s4=(String)session.getAttribute("s4");
s5=(String)session.getAttribute("s5");
s6=(String)session.getAttribute("s6");
s7=(String)session.getAttribute("s7");
s9=(String)session.getAttribute("s9");
s10=(String)session.getAttribute("s10");
s11=(String)session.getAttribute("s11");

		%>
        
        <form method="post" action="photo_con.jsp" enctype="multipart/form-data">
		<table width="447" height="114" align="center">
          <tr>
            <td height="57"><strong>upload image</strong></td>
            <td>
              <label>
                <input type="file" name="file" id="file">
                </label>            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
              <label>
              <input name="button" type="submit" class="btn-info" id="button" value="Submit">
              </label>
            </td>
          </tr>
        </table>
        </form>
		<p align="center">&nbsp;</p>
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
			(function() {
		
			// Create input element for testing
			var inputs = document.createElement('input');
			
			// Create the supports object
			var supports = {};
			
			supports.autofocus   = 'autofocus' in inputs;
			supports.required    = 'required' in inputs;
			supports.placeholder = 'placeholder' in inputs;
		
			// Fallback for autofocus attribute
			if(!supports.autofocus) {
				
			}
			
			// Fallback for required attribute
			if(!supports.required) {
				
			}
		
			// Fallback for placeholder attribute
			if(!supports.placeholder) {
				
			}
			
			// Change text inside send button on submit
			var send = document.getElementById('register-submit');
			if(send) {
				send.onclick = function () {
					this.innerHTML = '...Sending';
				}
			}
		
		})();
		</script>
		 <div class="registration_form">
		 <!-- Form -->
		 <!-- /Form -->
		</div>
	</div>
	<div class="registration_left">
		<h2>&nbsp;</h2>
		<div class="registration_form">
		 <!-- Form -->
			
			<!-- /Form -->
		</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- end registration -->
</div>
</div>
<!-- footer_top -->
<div class="footer_top">
 <div class="container">
	<div class="span_of_4">
	  <div class="clearfix"></div>
		</div>
		<!-- start span_of_2 -->
		<div class="span_of_2">
		<div class="span1_of_2">
			<h5>need help? <a href="#">contact us <span> ></span> </a> </h5>
			<p>(or) Call us: +91-70-45022088</p>
		</div>
		<div class="span1_of_2">
			<h5>follow us </h5>
			<div class="social-icons">
				     <ul>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
				        <li><a href="#" target="_blank"></a></li>
					</ul>
			</div>
		</div>
		<div class="clearfix"></div>
		</div>
  </div>
</div>
<!-- footer -->
<div class="footer">
 <div class="container">
	<div class="copy">
		<p class="link">&copy; All rights reserved | groceryshop.com</p>
	</div>
 </div>
</div>
</body>
</html>