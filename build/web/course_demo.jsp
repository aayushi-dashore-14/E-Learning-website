<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>

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
		/* Reset default margin/padding */
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		body {
			background: #f8f8f8;
			font-family: Arial, sans-serif;
		}

		header .container {
			margin-top: 0 !important;
		}

		.container.cards {
			display: flex;
			flex-wrap: wrap;
			align-items: center;
			justify-content: center;
			gap: 30px;
			margin-top: 80px;
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
		}

		.card.blue { border: 4px solid #007bff; }
		.card.orange { border: 4px solid #ff7300; }
		.card.purple { border: 4px solid #8000ff; }
		.card.red { border: 4px solid #ff4500; }
		.card.green { border: 4px solid #4caf50; }
		.card.cyan { border: 4px solid #00bcd4; }

		

		.card.blue .diamond { background: #007bff; }
		.card.orange .diamond { background: #ff7300; }
		.card.purple .diamond { background: #8000ff; }
		.card.red .diamond { background: #ff4500; }
		.card.green .diamond { background: #4caf50; }
		.card.cyan .diamond { background: #00bcd4; }
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
			
		</div>
	</header>
	<!-- /Header -->

	<!-- Cards -->
	<div class="container cards">
                <a href="jee.jsp"><div class="card blue"> JEE<div class="diamond"></div></div></a>
		<a href="neet.jsp"><div class="card orange"> NEET <div class="diamond"></div></div></a>
                <a href="cat.jsp"><div class="card cyan"> CAT <div class="diamond"></div></div></a>
		<a href="banking.jsp"><div class="card purple"> BANKING <div class="diamond"></div></div></a>
		<a href="ssc.jsp"><div class="card red"> SSC <div class="diamond"></div></div></a>
		<a href="psc.jsp"><div class="card green"> PSC <div class="diamond"></div></div></a>
		
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
