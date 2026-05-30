<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> course management</title>

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
        <%
        
          Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
    Statement p = null;
    ResultSet rs = null;
    String sql=null; 
    sql="select * from registration";
    p = conn.createStatement();
    rs = p.executeQuery(sql);
            
%>
<center>
<h1> Students Detail</h1>
</center>
<table align="center" border="3" cellspacing="3">
    <tr>
        <th> Student Name</th>
         <th> Email Id</th>
         <th> Mobile Number</th>
          <th> Password</th>
           <th> Gender</th>
            <th> Security Question</th>
             <th> Answer</th>
               <th> Image</th>
             
    </tr>   
    <%
    int cnt=0;
    while(rs.next())
               {
        %>
    
    <tr>
        <td><%=rs.getString("fullname")%> </td>
         <td><%=rs.getString("email")%> </td>
         <td><%=rs.getString("phone")%> </td>
          <td><%=rs.getString("password")%> </td>
           <td><%=rs.getString("gender")%> </td>
         <td><%=rs.getString("securityQ")%> </td>
         <td><%=rs.getString("answer")%> </td>
         <td><img src="image.jsp?id=<%=rs.getString("email")%>" width="200" height="200"/> </td>
       
          
    </tr>        
    <br>
    <%
    cnt++;
       }
    out.println("total registration-"+cnt);
    %>
    &nbsp;&nbsp;
    
</table>
             

	<!-- Preloader -->
	<div id="preloader"><div class="preloader"></div></div>

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
