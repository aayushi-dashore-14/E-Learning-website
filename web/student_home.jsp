<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Student Home</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

	<style>
			/* Reset and Base */
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		body {
			background: linear-gradient(to right, #f8f8f8, #e0eafc);
			font-family: 'Poppins', sans-serif;
			color: #333;
		}

		header .container {
			margin-top: 0 !important;
		}

		/* Navbar */
		nav ul li a {
			color: #333;
			font-weight: 500;
			transition: 0.3s;
		}

		nav ul li a:hover {
			color: #007bff;
			text-decoration: underline;
		}

		/* Cards Layout */
		.container.cards {
			display: flex;
			flex-wrap: wrap;
			align-items: center;
			justify-content: center;
			gap: 30px;
			margin-top: 80px;
			padding-bottom: 60px;
		}

		.card {
			width: 400px;
			height: 100px;
			background: white;
			border-radius: 10px;
			box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
			position: relative;
			padding: 10px;
			display: flex;
			align-items: center;
			justify-content: center;
			font-size: 22px;
			font-weight: 600;
			transition: transform 0.3s ease, box-shadow 0.3s ease;
			cursor: pointer;
		}

		.card:hover {
			transform: scale(1.05);
			box-shadow: 0 10px 20px rgba(0,0,0,0.15);
		}

		/* Card Border Colors */
		.card.blue { border: 4px solid #007bff; color: #007bff; }
		.card.orange { border: 4px solid #ff7300; color: #ff7300; }
		.card.purple { border: 4px solid #8000ff; color: #8000ff; }
		.card.red { border: 4px solid #ff4500; color: #ff4500; }
		.card.green { border: 4px solid #4caf50; color: #4caf50; }
		.card.cyan { border: 4px solid #00bcd4; color: #00bcd4; }

		.diamond {
			position: absolute;
			right: -15px;
			top: 50%;
			transform: translateY(-50%) rotate(45deg);
			width: 25px;
			height: 25px;
			background: inherit;
			box-shadow: 0 0 10px rgba(0,0,0,0.1);
		}

		.card.blue .diamond { background: #007bff; }
		.card.orange .diamond { background: #ff7300; }
		.card.purple .diamond { background: #8000ff; }
		.card.red .diamond { background: #ff4500; }
		.card.green .diamond { background: #4caf50; }
		.card.cyan .diamond { background: #00bcd4; }

		/* Preloader */
		#preloader {
			position: fixed;
			top: 0; left: 0;
			width: 100%;
			height: 100%;
			background: rgba(255,255,255,0.9);
			z-index: 9999;
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.preloader {
			width: 50px;
			height: 50px;
			border: 5px solid #ccc;
			border-top: 5px solid #007bff;
			border-radius: 50%;
			animation: spin 1s linear infinite;
		}

		@keyframes spin {
			0% { transform: rotate(0deg); }
			100% { transform: rotate(360deg); }
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
				<!-- Mobile toggle -->
				<button class="navbar-toggle">
					<span></span>
				</button>
			</div>

			<!-- Navigation -->
			<nav id="nav">
				<ul class="main-menu nav navbar-nav navbar-right">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="about.jsp">About</a></li>
                                        <li><a href="edit_profile.jsp">Edit profile</a></li>
					<li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="logout.jsp"> Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- /Header -->

	<!-- Cards -->
	<div class="container cards">
		<a href="jee.jsp?course=JEE"><div class="card blue"> JEE<div class="diamond"></div></div></a>
		<a href="neet.jsp?course=NEET"><div class="card orange"> NEET <div class="diamond"></div></div></a>
                <a href="cat.jsp?course=CAT"><div class="card cyan"> CAT <div class="diamond"></div></div></a>
		<a href="banking.jsp?course=BANKING"><div class="card purple"> BANKING <div class="diamond"></div></div></a>
		<a href="ssc.jsp?course=SSC"><div class="card red"> SSC <div class="diamond"></div></div></a>
		<a href="psc.jsp?course=PSC"><div class="card green"> PSC <div class="diamond"></div></div></a>
		
	</div>
	<!-- /Cards -->
    

	<!-- Preloader -->
	<div id="preloader"><div class="preloader"></div></div>

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
