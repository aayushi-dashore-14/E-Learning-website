
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> Forget Password</title>

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
        <form align="center" action="forget.jsp">
            <table cellspacing="1" border="1" align="center">
                <tr>
                    <th> Email</th>
                    <td><input type="text" name="email"></td>
                </tr>
                
                <tr>
                 <th> Security Question: </th>
                 <td>
            <select name="securityQ" required>
                <option> Select here</option>
                <option> your birth place</option>
                <option>your father name </option>
                <option>your mother name</option>
            </select></td>
                </tr>
            
                <tr>
                    <th> Your Answer:</th>
                    <td   <input type="text" name="answer" required=""> </td>
                </tr>
                
                <tr>
                    <td align="center"><input type="submit" value="check" name="check" </td>
                </tr>
                
                
            </table>
            
        </form>
        
        <%
        if(request.getParameter("check")!=null);
               {
            try
           {
                String email = request.getParameter("email");
                String securityQ = request.getParameter("securityQ");
                String answer = request.getParameter("answer");
             
                session.setAttribute("email", email);
                
               Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
    
    String sql = "select * from registration where email='"+email+"' and securityQ='"+securityQ"'+ and answer='"+answer+"'";
   
    PreparedStatement p = con.prepareStatement(sql);
    ResultSet rs = p.executeQuery();
   if(rs.next())
             {
       %>
       <script>
           alert("You want to change Password");
           window.location.href="change.jsp";
       </script>
       <%
   }
else
       {
        out.print("<script>alert('Your Account Not Found')</script>");
        out.print("<script>window.open('index.jsp';'_self')</script>");
} }
            catch(Exception e){
                out.print(e);
                               }
                       }
                                                                                                                                                                }
               
	%>

	<!-- Preloader -->
	<div id="preloader"><div class="preloader"></div></div>

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
