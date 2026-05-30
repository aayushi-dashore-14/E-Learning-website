<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admin Home</title>

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
		background: linear-gradient(135deg, #f0f4ff, #eaf4f8);
		font-family: 'Lato', sans-serif;
		color: #333;
	}

	header .container {
		margin-top: 0 !important;
		background: #fff;
		box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
		padding: 15px;
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
		height: 120px;
		background: white;
		border-radius: 12px;
		box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
		position: relative;
		padding: 10px;
		display: flex;
		align-items: center;
		justify-content: center;
		font-weight: 600;
		font-size: 18px;
		transition: transform 0.3s ease, box-shadow 0.3s ease;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		color: #000;
	}

	.card:hover {
		transform: translateY(-5px);
		box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
	}

	.card.blue { border: 4px solid #007bff; background: #e6f0ff; }
	.card.orange { border: 4px solid #ff7300; background: #fff2e6; }
	.card.purple { border: 4px solid #8000ff; background: #f3e6ff; }
	.card.red { border: 4px solid #ff4500; background: #ffe6e6; }
	.card.green { border: 4px solid #4caf50; background: #e6f9ea; }
	.card.cyan { border: 4px solid #00bcd4; background: #e0f7fa; }

	.diamond {
		position: absolute;
		right: -15px;
		top: 50%;
		transform: translateY(-50%) rotate(45deg);
		width: 25px;
		height: 25px;
		background: inherit;
		box-shadow: inherit;
		border-radius: 4px;
	}

	.card.blue .diamond { background: #007bff; }
	.card.orange .diamond { background: #ff7300; }
	.card.purple .diamond { background: #8000ff; }
	.card.red .diamond { background: #ff4500; }
	.card.green .diamond { background: #4caf50; }
	.card.cyan .diamond { background: #00bcd4; }

	a {
		text-decoration: none;
	}
</style>

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
					<li><a href="course_demo.jsp">Courses</a></li>
					<li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="logout.jsp">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- /Header -->

	<!-- Cards -->
	<div class="container cards">
		<a href="view_students_details.jsp"><div class="card blue">View Students Details<div class="diamond"></div></div></a>
		<a href="add_course.jsp"><div class="card orange">Add Courses<div class="diamond"></div></div></a>
		<a href="view_update_delete.jsp"><div class="card purple">View, Update, Delete Course<div class="diamond"></div></div></a>
                <a href="query_and_feedback.jsp"><div class="card green">View Query & Feedback Details<div class="diamond"></div></div></a>
            <!--<a href=""><div class="card red">Teachers Registration<div class="diamond"></div></div></a>
		
		<a href=""><div class="card cyan">Teacher's Detail<div class="diamond"></div></div></a> -->
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
