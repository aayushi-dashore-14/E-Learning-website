<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title> Login form</title>
                <style>
body, html {
  height: 100%;
}

.bg {
  /* The image used */
  background-image: url("./img/book.jpg");
  
  
 
  

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

                    h1{
                        color:white;
                        align:center;
                        margin-left: 40%;
                    }
                  
                        
                      label{
                        display: block;
                        margin-left: 5px;
                    }
                    input[type="text"],
                    input[type="password"],
                    input[type="email"],
                    input[type="file"],
                    select{
                        width: 100%;
                        padding: 10px;
                        margin-bottom: 20px;
                        border: 1px solid #000b;
                        border-radius: 4px;
                        color: white;
                    }
                    input[type="submit"]{
                        background:#4cac4c;
                        color:#fff;
                        border: none;
                        padding: 10px 15px;
                        border-radius: 4px;
                        cursor: pointer;
                        alignment-adjust: central;
                    }
                    input[type="submit"]:hover{
                        background: #4cac4c;
                    }
                    .x{
                        display: flex;
                        text-align: center;
                        justify-content:center;
                    }
                    
                    
                    
</style>
		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body class="bg">

		<!-- Header -->
		<header id="header" class="transparent-nav">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo -->
					<div class="navbar-brand">
						<a class="logo" href="index.jsp">
							<img src="./img/logo-alt.png" alt="logo">
						</a>
					</div>
					<!-- /Logo -->

					<!-- Mobile toggle -->
					<button class="navbar-toggle">
						<span></span>
					</button>
					<!-- /Mobile toggle -->
				</div>

				<!-- Navigation -->
				<nav id="nav">
					<ul class="main-menu nav navbar-nav navbar-right">
						<li><a href="index.html">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Courses</a></li>
						
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</nav
                                <p></p>
				<!-- /Navigation -->

			</div>
		</header>
		<!-- /Header -->
                
                
                
               

		<!-- Home -->
		<div id="home" class="hero-area">

			<!-- Backgound Image-->
			<div class="" ></div>
			<!-- /Backgound Image -->
                        
                        <br><br><br><br><br>  <div Style="alignment-adjust: central"><div class="col-md-6">            
                                <h1 align="center" style="color:white"> Login Here </h1>
          
        <form action="logindetails.jsp" method="post" width="50%">
            
            
            
            <label for="email" style="color:white"> Enter Email: </label><br>
            <input type="email" name="email" required ><br><p></p>
                    
            <label for="password" style="color:white"> Password: </label><br>
            <input type="password" name="pw" required ><br> <p></p>
            <p class="x">
              <input type="submit" name="submit" value="Login" >    <br>
              
            </p>
       
            <a href="forget.jsp"  style="color:white"> Forget Password</a>                    
         
      <p></p>
          
            </form>
                             
                        </div>
				
                            <</center>
				</div>
                </div>
				<!-- row -->

		
			<!-- /container -->

		
		<!-- /Footer -->

		<!-- preloader -->
		<div id='preloader'><div class='preloader'></div></div>
		<!-- /preloader -->


		<!-- jQuery Plugins -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/main.js"></script>

	</body>
</html>
