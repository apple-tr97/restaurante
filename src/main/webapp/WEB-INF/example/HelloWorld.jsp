<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Feliciano - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">

    <link rel="stylesheet" href="../css/aos.css">

    <link rel="stylesheet" href="../css/ionicons.min.css">

    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/icomoon.css">
    <link rel="stylesheet" href="../css/style.css">
  </head>
  <body>
    <div class="py-1 bg-black top">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+52 722379128</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">feliciano@gmail.com</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
						    <p class="mb-0 register-link"><span>Servicio:</span> <span>Lunes - S�bado</span> <span>8:00AM - 9:00PM</span></p>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Feliciano</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<s:url action="goto_menu" var="goto_menu"/>
	        	<s:url action="goto_misreservaciones" var="goto_misreservaciones"/>
	        	<s:url action="goto_reservaciones" var="goto_reservaciones"/>
	        	<s:url action="goto_feedback" var="goto_feedback"/>
	        	<s:url action="goto_reportefeedback" var="goto_reportefeedback"/>
	        	<s:url action="goto_creareservacion" var="goto_creareservacion"/>
	        	
	        	<li class="nav-item active"><a href="${goto_menu}" class="nav-link">Men�</a></li>
	        	<li class="nav-item"><a href="${goto_misreservaciones}"class="nav-link">Mis Reservaciones</a></li>
	        	<li class="nav-item"><a href="${goto_reservaciones}" class="nav-link">Reservaciones</a></li>
	        	<li class="nav-item"><a href="${goto_feedback}" class="nav-link">Feedback</a></li>
	        	<li class="nav-item"><a href="${goto_reportefeedback}" class="nav-link">Reporte de Feedback</a></li> 
	          <li class="nav-item cta"><a href="${goto_creareservacion}" class="nav-link">Hacer reservaci�n</a></li>
            <button type="button" id="loginmb" style="display: block" class="btn btn-primary" data-toggle="modal" data-target="#Login">Login</button>
            <button type="button" id="signout" style="display: none" class="btn btn-primary"></button>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="home-slider owl-carousel js-fullheight">
      <div class="slider-item js-fullheight" style="background-image: url(../images/bg_1.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text js-fullheight justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-12 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Feliciano</span>
              <h1 class="mb-4">Best Restaurant</h1>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item js-fullheight" style="background-image: url(../images/bg_2.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text js-fullheight justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-12 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Feliciano</span>
              <h1 class="mb-4">Nutritious &amp; Tasty</h1>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item js-fullheight" style="background-image: url(../images/bg_3.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-12 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Feliciano</span>
              <h1 class="mb-4">Delicious Specialties</h1>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container-fluid">
    		<div class="row">
    			<div class="col-md-12">
    				<div class="featured">
    					<div class="row">
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(../images/breakfast-1.jpg);"></div>
			              <div class="text text-center">
		                  <h3>Grilled Beef with potatoes</h3>
				              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
			              </div>
			            </div>
    						</div>
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(../images/breakfast-2.jpg);"></div>
			              <div class="text text-center">
		                  <h3>Grilled Beef with potatoes</h3>
				              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
			              </div>
			            </div>
    						</div>
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(../images/breakfast-3.jpg);"></div>
			              <div class="text text-center">
		                  <h3>Grilled Beef with potatoes</h3>
				              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
			              </div>
			            </div>
    						</div>
    						<div class="col-md-3">
    							<div class="featured-menus ftco-animate">
			              <div class="menu-img img" style="background-image: url(../images/breakfast-4.jpg);"></div>
			              <div class="text text-center">
		                  <h3>Grilled Beef with potatoes</h3>
				              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
			              </div>
			            </div>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
	

		<section class="ftco-section ftco-wrap-about">
			<div class="container">
				<div class="row">
					<div class="col-md-7 d-flex">
						<div class="img img-1 mr-md-2" style="background-image: url(../images/about.jpg);"></div>
						<div class="img img-2 ml-md-2" style="background-image: url(../images/about-1.jpg);"></div>
					</div>
					<div class="col-md-5 wrap-about pt-5 pt-md-5 pb-md-3 ftco-animate">
	          <div class="heading-section mb-4 my-5 my-md-0">
	          	<span class="subheading">About</span>
	            <h2 class="mb-4">Feliciano Restaurant</h2>
	          </div>
	          <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
						<pc class="time">
							<span>Mon - Fri <strong>8 AM - 11 PM</strong></span>
							<span><a href="#">+ 1-978-123-4567</a></span>
						</p>
					</div>
				</div>
			</div>
		</section>

		


		<section class="ftco-section bg-light">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-12 text-center heading-section ftco-animate">
          	<span class="subheading">Services</span>
            <h2 class="mb-4">Catering Services</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-cake"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Birthday Party</h3>
                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-meeting"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Business Meetings</h3>
                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-4 d-flex align-self-stretch ftco-animate text-center">
            <div class="media block-6 services d-block">
              <div class="icon d-flex justify-content-center align-items-center">
            		<span class="flaticon-tray"></span>
              </div>
              <div class="media-body p-2 mt-3">
                <h3 class="heading">Wedding Party</h3>
                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
              </div>
            </div>      
          </div>
        </div>
			</div>
		</section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row no-gutters justify-content-center mb-5 pb-2">
          <div class="col-md-12 text-center heading-section ftco-animate">
          	<span class="subheading">Specialties</span>
            <h2 class="mb-4">Our Menu</h2>
          </div>
        </div>
        <div class="row no-gutters d-flex align-items-stretch">
        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(../images/breakfast-1.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Grilled Beef with potatoes</h3>
		                </div>
		                <div class="one-forth">
		                  
		                </div>
		              </div>
		              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
		           
	              </div>
              </div>
            </div>
        	</div>
        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(../images/breakfast-2.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Grilled Beef with potatoes</h3>
		                </div>
		                <div class="one-forth">
		                 
		                </div>
		              </div>
		              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
		
	              </div>
              </div>
            </div>
        	</div>

        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img order-md-last" style="background-image: url(../images/breakfast-3.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Grilled Beef with potatoes</h3>
		                </div>
		                <div class="one-forth">
		                 
		                </div>
		              </div>
		              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
		     
	              </div>
              </div>
            </div>
        	</div>
        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img order-md-last" style="background-image: url(../images/breakfast-5.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Grilled Beef with potatoes</h3>
		                </div>
		                <div class="one-forth">
		             
		                </div>
		              </div>
		              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
		        
	              </div>
              </div>
            </div>
        	</div>

        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(../images/breakfast-6.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Grilled Beef with potatoes</h3>
		                </div>
		                <div class="one-forth">
		              
		                </div>
		              </div>
		              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
		          
	              </div>
              </div>
            </div>
        	</div>
        	<div class="col-md-12 col-lg-6 d-flex align-self-stretch">
        		<div class="menus d-sm-flex ftco-animate align-items-stretch">
              <div class="menu-img img" style="background-image: url(../images/breakfast-2.jpg);"></div>
              <div class="text d-flex align-items-center">
								<div>
	              	<div class="d-flex">
		                <div class="one-half">
		                  <h3>Grilled Beef with potatoes</h3>
		                </div>
		                <div class="one-forth">
		            
		                </div>
		              </div>
		              <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
		             
	              </div>
              </div>
            </div>
        	</div>
        </div>
    	</div>
    </section>

		


		
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Feliciano</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Open Hours</h2>
              <ul class="list-unstyled open-hours">
                <li class="d-flex"><span>Monday</span><span>9:00 - 24:00</span></li>
                <li class="d-flex"><span>Tuesday</span><span>9:00 - 24:00</span></li>
                <li class="d-flex"><span>Wednesday</span><span>9:00 - 24:00</span></li>
                <li class="d-flex"><span>Thursday</span><span>9:00 - 24:00</span></li>
                <li class="d-flex"><span>Friday</span><span>9:00 - 02:00</span></li>
                <li class="d-flex"><span>Saturday</span><span>9:00 - 02:00</span></li>
                <li class="d-flex"><span>Sunday</span><span> 9:00 - 02:00</span></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Instagram</h2>
              <div class="thumb d-sm-flex">
	            	<a href="#" class="thumb-menu img" style="background-image: url(images/insta-1.jpg);">
	            	</a>
	            	<a href="#" class="thumb-menu img" style="background-image: url(images/insta-2.jpg);">
	            	</a>
	            	<a href="#" class="thumb-menu img" style="background-image: url(images/insta-3.jpg);">
	            	</a>
	            </div>
	            <div class="thumb d-flex">
	            	<a href="#" class="thumb-menu img" style="background-image: url(images/insta-4.jpg);">
	            	</a>
	            	<a href="#" class="thumb-menu img" style="background-image: url(images/insta-5.jpg);">
	            	</a>
	            	<a href="#" class="thumb-menu img" style="background-image: url(images/insta-6.jpg);">
	            	</a>
	            </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Newsletter</h2>
            	<p>Far far away, behind the word mountains, far from the countries.</p>
              <form action="#" class="subscribe-form">
                <div class="form-group">
                  <input type="text" class="form-control mb-2 text-center" placeholder="Enter email address">
                  <input type="submit" value="Subscribe" class="form-control submit px-3">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="../js/jquery.min.js"></script>
  <script src="../js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/jquery.waypoints.min.js"></script>
  <script src="../js/jquery.stellar.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.magnific-popup.min.js"></script>
  <script src="../js/aos.js"></script>
  <script src="../js/jquery.animateNumber.min.js"></script>
  <script src="../js/bootstrap-datepicker.js"></script>
  <script src="../js/jquery.timepicker.min.js"></script>
  <script src="../js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="../js/google-map.js"></script>
  <script src="../js/main.js"></script>

	<div class="modal" id="Login">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Login</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label for="usr">Email:</label>
						<input type="text" class="form-control" id="usr">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" id="pwd">
					</div>
					<a onclick="signupModel()" href="#">Singup</a>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button type="submit" id="LoginB" class="btn btn-primary">Login</button>
				</div>

			</div>
		</div>
	</div>
	<div class="modal" id="SignIn">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Sign In</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label for="usr">Name:</label>
						<input type="text" class="form-control" id="nName">
					</div>
					<div class="form-group">
						<label for="usr">Email:</label>
						<input type="text" class="form-control" id="nUser">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label>
						<input type="password" class="form-control" id="nPassword">
					</div>
					<div class="form-group">
						<label for="pwd">Confirm Password:</label>
						<input type="password" class="form-control" id="cPassword">
					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button  type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<button  type="submit" id="signInB" class="btn btn-primary">Sign in</button>
				</div>

			</div>
		</div>
	</div>
  </body>
	<script>
		function signupModel() {
			$("#Login").modal("hide");
			$("#SignIn").modal("toggle");
		}

		$("#signInB").click(function(){
			var name = $("#nName").val();
			var email = $("#nUser").val();
			var password = $("#nPassword").val();
			var cpassqord = $("#cPassword").val()
			var json = {"name":name,"mail":email,"pass":password,"passC":cpassqord}
			if(email.includes("@")) {
				if (password == cpassqord){
					$.ajax({
						url: "registrar",
						type: 'POST',
						dataType: 'json',
						data: json,
						success:function(response){
							alert("Usuario Registrado");
							$("#nName").val("");
							$("#nUser").val("");
							$("#nPassword").val("");
							$("#cPassword").val("")
							$("#SignIn").modal("hide");

						},
						error:function(jqXhr, textStatus, errorThrown){
							alert("Error al registrar el correo ya existe");
						}
					});
				}else {alert("Passwords no coinciden");}
			}else {alert("Inserte correo correctamente");}
		});

		$("#LoginB").click(function(){
			var email= $("#usr").val();
			var password = $("#pwd").val();
			var json = {"user":email,"pass":password}
			if(email.length > 1) {
				if (password.length > 1){
					$.ajax({
						url: "login",
						type: 'POST',
						dataType: 'json',
						data: json,
						success:function(response){
							console.log(response);
							document.getElementById("loginmb").style.display = "none";
							$("#signout").html(response.userbean.nombre+" (sign out)");
							document.getElementById("signout").style.display = "block";
							$("#Login").modal("hide");
							$("#usr").val("");
							$("#pwd").val("");
							if(response.userbean.type == "user") {
								
							}

						},
						error:function(jqXhr, textStatus, errorThrown){
							alert("Correo o password erroneo");
						}
					});
				}else {alert("Password vacio");}
			}else {alert("Usuario vacio");}
		});
	</script>
</html>
