<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title> Registration Form</title>

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
                <style>
                    body{
                        font-family: arial;
                        margin: 0;
                        padding: 20px;
                    }             
                    h1{
                        color: #333;
                        align:center;
                        margin-left: 40%;
                    }
                    form{
                        background: #fff;
                        margin-left: 40%;
                        padding: 20px;
                        border-radius: 5px;
                        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                        alignment-adjust: central;
                        text-align: center;
                        
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
                    }
                    input[type="submit"]{
                        background:#4cac4c;
                        color:#fff;
                        border: none;
                        padding: 10px 15px;
                        border-radius: 4px;
                        cursor: pointer;
                    }
                    input[type="submit"]:hover{
                        background: #4cac4c;
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </style>
    </head>
	<body>
<!-- Header -->
		<header id="header">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo -->
					<div class="navbar-brand">
						<a class="logo" href="index.jsp">
							<img src="./img/logo.png" alt="logo">
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
				</nav>
				<!-- /Navigation -->

			</div>
		</header>
		<!-- /Header -->

		

		<!-- Home -->
		<div id="home" class="hero-area">

			<!-- Backgound Image
			<div class="bg-image bg-parallax overlay" style="background-image:url(./img/book.jpg)"></div>
			<!-- /Backgound Image -->
         <center>
    <div class="col-md-8">            
       <h1 align="center"> Registration Form</h1>
    
        <form action="registration_details.jsp" method="post" enctype="multipart/form-data" width="50%">
            
            <label for="stdname"> Student Name: </label>
            <input type="text" name="sn" required ><br>
            
            <label for="email"> Email:</label>
            <input type="email" name="email" required ><br>
            
            <label for="phone"> Mobile Number: </label>
            <input type="text" name="phone" required ><br>
                   
            <label for="password"> Password: </label>
            <input type="password" name="pw" required ><br>
            
           <label for="gender" > Select Your Gender: </label>
            <select name="gender" required>
                <option> select</option>
                <option> Male</option>
                <option>Female</option>
                <option>Other</option>
            </select><br>
            
            <label for="sq"> Security Question: </label>
            <select name="securityQ" required>
                <option> Select here</option>
                <option> your birth place</option>
                <option>your father name </option>
                <option>your mother name</option>
            </select><br>
            
            <label for="answer"> Your Answer:</label>
            <input type="text" name="answer"><br>
            
             <label for="photo"> photo: </label>
            <input type="file" name="photo" required ><br>
            
            
            <input type="submit" name="submit" value="Register"><br><br>
            
            
        </form>
  
                        </div>
                          </center>
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
