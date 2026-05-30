<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add course</title>

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
         body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .form-container {
            width: 60%;
            margin: 0 auto;
            background: #fff;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 15px;
        }
        td {
            padding: 10px;
            vertical-align: top;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        textarea,
        input[type="file"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            resize: vertical;
        }
        .submit-btn {
            text-align: center;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 25px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
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
					<li><a href="course_demo.jsp">Courses</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- /Header -->
 <center>
     
                
     <h1>Add Course</h1>

<div class="form-container">
    <form action="addcourse_detail.jsp" method="post" enctype="multipart/form-data">
        <table>
           
            <tr>
                <td>
                    <label for="cn">Course Name:</label>
                    <input type="text" id="cn" name="cn" required>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="ct">Course Type:</label>
                    <select class="form-control" name="ct">
                        <option>JEE</option>
                         <option>NEET</option>
                          <option>CAT</option>
                           <option>BANKING</option>
                            <option>SSC</option>
                             <option>PSC</option>
                    </select>
                    
                </td>
            </tr>
            
            <tr>
                <td>
                    <label for="cd">Course Duration:</label>
                    <input type="text" id="cd" name="cd" required>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="description">Course Description:</label>
                    <textarea id="description" name="description" rows="5"></textarea>
                </td>
            </tr>
            
             <tr>
                <td>
                    <label for="fees">Fees:</label>
                    <input type="text" id="fees" name="fees" required>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="photo">Photo:</label>
                    <input type="file" id="photo" name="photo" required>
                </td>
            </tr>
            <tr>
                <td class="submit-btn">
                    <input type="submit" name="submit" value="Add">
                </td>
            </tr>
        </table>
    </form>
</div>


	<!-- Preloader -->
	<div id="preloader"><div class="preloader"></div></div>

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
