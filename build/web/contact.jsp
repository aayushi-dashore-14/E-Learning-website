<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Course Management System</title>

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
    body {
        font-family: 'Montserrat', sans-serif;
        background: #f0f2f5;
        margin: 0;
        padding: 0;
        color: #333;
    }

    h1 {
        font-size: 36px;
        color: #4cac4c;
        margin-bottom: 30px;
        font-weight: bold;
    }

    .yy {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .col-md-8 {
        background: #ffffff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
    }

    form {
        width: 100%;
    }

    .col-12 {
        width: 100%;
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: 600;
        margin-bottom: 8px;
        font-size: 15px;
        color: #222;
    }

    input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 12px 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 15px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    textarea:focus {
        border-color: #4cac4c;
        outline: none;
        box-shadow: 0 0 4px rgba(76, 172, 76, 0.2);
    }

    textarea {
        height: 150px;
        resize: vertical;
    }

    .xx,
    input[type="submit"] {
        background-color: #4cac4c;
        color: white;
        border: none;
        padding: 12px 24px;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
    }

    .xx:hover,
    input[type="submit"]:hover {
        background-color: #3e9a3e;
    }

    nav ul li a {
        transition: color 0.3s ease;
    }

    nav ul li a:hover {
        color: #4cac4c !important;
    }

    @media (max-width: 768px) {
        .col-md-8 {
            padding: 25px;
        }

        h1 {
            font-size: 28px;
        }
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
						<a class="logo" href="index.html">
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
						
						<li><a href=""course_demo.jsp>Courses</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</nav>
				<!-- /Navigation -->

			</div>
		</header>
		<!-- /Header -->
                <div class="yy">
                    <div class="col-md-8">
                        <center>
                           <h1>Contact Us</h1>
                    <form action="contact_details.jsp" method="post">
                                
                                    <div class="col-12">
                                        
                                            <label for="name">Your Name:</label>
                                            <input type="text" id="name" name="name" placeholder=" Enter Your Name">
                                            
                                        
                                    </div>
                                    <div class="col-12">
                                        <label for="email">Your Email:</label>
                                            <input type="email" id="email" name="email" placeholder=" Enter Your Email">
                                            
                                        
                                    </div>
                                    <div class="col-12">
                                       <label for="subject">Subject</label>
                                            <input type="text" id="subject" name="subject" placeholder="Subject">
                                            
                                        
                                    </div>
                                    <div class="col-12">
                                        
                                            <label for="message">Message</label>
                                            <textarea placeholder="Leave a message here" name="message" id="message" style="height: 150px"></textarea>
                                                  
                                       
                                    </div>
                        
                                    <div class="col-12">
                                        <button class="xx" type="submit">Send Message</button>
                                    </div>
                                
                            </form>
                        </center>
                        </div>
                </div>
           
		
        
		</footer>
		<!-- /Footer -->

		<!-- preloader -->
		<div id='preloader'><div class='preloader'></div></div>
		<!-- /preloader -->


		<!-- jQuery Plugins -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script type="text/javascript" src="js/google-map.js"></script>
		<script type="text/javascript" src="js/main.js"></script>

	</body>
</html>
