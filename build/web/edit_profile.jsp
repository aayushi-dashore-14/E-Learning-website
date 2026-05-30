<%@page import="java.sql.*" %>
<%@page import="java.io.InputStream" %>
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
<body>
        
           <%
           
       String ss = (String)session.getAttribute("email");
          //  out.print(id);
              Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
    Statement st = con.createStatement();
    try{
      ResultSet rs=st.executeQuery("select * from registration where email='"+ss+"'");
    while(rs.next())
    {
        String a = rs.getString("fullname");
        String b = rs.getString("email");
        String c = rs.getString("phone");
        String d = rs.getString("password");
        
        %>
 <center>
     
                
     <h1>Edit Profile</h1>

<div class="form-container">
    <form action="edit_profile.jsp" method="post" enctype="multipart/form-data">
        <label for="stdname"> Student Name: </label>
        <input type="text" name="sn" id="sn" value="<%=a%>" required ><br>
            
           
            
            <label for="phone"> Mobile Number: </label>
            <input type="text" name="phone" value="<%=c%>"required ><br>
                   
            <label for="password"> Password: </label>
            <input type="password" name="pw" value="<%=d%>" required ><br>
            <br>
     
          <input type="hidden" name="h" value="<%=ss%>">
        <button class="btn btn-primary w-100 py-3" name="ss" type="submit"> Edit Profile</button>
                                   
    </form>
</div>
                                        
         <%
                 }
       }
            catch (Exception e)
              {
                e.printStackTrace();
                               }
            if(request.getParameter("ss")!=null)
                               {
                try
           {
             
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
               PreparedStatement p1=null;
               String sql=null;
               String name=request.getParameter("sn");
              // String email=request.getParameter("email");
               String phone=request.getParameter("phone");
               String password=request.getParameter("pw");
               //String username=request.getParameter("un");
               String h1=request.getParameter("h");
               
               sql="update registration set fullname=?,phone=?,password=? where email=?";
               p1=con.prepareStatement(sql);
               
               p1.setString(1,name);
               p1.setString(2,phone);
               p1.setString(3,password);
             
               p1.setString(4,h1);
               
               int y=p1.executeUpdate();
               if(y==1)
               {
                   %>
                   <script>
                       alert("record update");
                   </script>
                   <%}
               else
                 {%>
                 <script>
                     alert("record not found");
                 </script>
                 <%}
                  }
                catch(Exception e)
                  {
                    e.printStackTrace();
                }}
           
         %>
                
                  
        </center>


                 

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
