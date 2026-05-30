<%@page import="java.sql.*" %>
<%@page import="java.io.InputStream" %>
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
         try
        {
       Connection conn =null;
       int cid=Integer.parseInt(request.getParameter("id"));
           Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
   Statement s =conn.createStatement();
   ResultSet rs=s.executeQuery("select * from addcourse where courseid='"+cid+"'");
   
   while(rs.next())
             {
       %>
    <center>
       <h3> Your course information</h3>
       <form action="update.jsp" method="post">
             <table border="1" bgcolor="lightblue">
                 <tr>
                     <th>course Name:</th>
                     <td>
                         <input type="text" name="cn" value="<%=rs.getString("coursename")%>">
                     </td>
                 </tr>
                 
                 <tr>
                     <th> Duration:</th>
                     <td>
                         <input type="text" name="dur" value="<%=rs.getString("duration")%>">
                     </td>
                 </tr>
                 
                 <tr>
                     <th> Description:</th>
                     <td>
                         <input type="text" name="des" value="<%=rs.getString("description")%>">
                     </td>
                 </tr>
                   <tr>
                     <th> fees:</th>
                     <td>
                         <input type="text" name="fees" value="<%=rs.getString("fees")%>">
                     </td>
                 </tr>
                 
                 
                 <tr>
                     <td colspan="2" align="center">         
                         <input type="submit" name="s" value="update">
                         <input type="hidden" name="h" value="<%=rs.getString("courseid")%>">
                         
                         
                         
                     </td>
                 </tr>
                 
           </table>
    </form>
    </center>
    
       <%
             }}
         catch(Exception e)
             {
             e.printStackTrace();
           }
         
         
         
    try
    {
        Connection con=null;
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
     PreparedStatement p1 = null;
     String sql=null;
     
     String cn=request.getParameter("cn");
       String dur=request.getParameter("dur");
         String des=request.getParameter("des");
          String fees=request.getParameter("fees");
         
         int h1=Integer.parseInt(request.getParameter("h"));
         InputStream input = null;
        
     
                         {
             
         
      sql="update addcourse set coursename=?,duration=?,description=? , fees=? where courseid=?";
      p1=con.prepareStatement(sql);
      p1.setString(1,cn);
      p1.setString(2, dur);
      p1.setString(3, des);
      p1.setString(4, fees);
     
      p1.setInt(5, h1);

int y = p1.executeUpdate();
if(y ==1){
    %>
    <script>
        alert("Update Successfully");
        window.location.href="admin_home.jsp";
    </script>
   
       <%   
              } else
       { 
          %>
    <script>
        alert(" not update ");
        window.location.href='admin_home.jsp';
    </script>       
           
    <%
    
}
    }
                 }
    catch(Exception e)
                       {
        e.printStackTrace();
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
