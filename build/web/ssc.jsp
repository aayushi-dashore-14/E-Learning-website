<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> JEE course </title>

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
					<li><a href="index.html">Home</a></li>
					<li><a href="about.jsp">About</a></li>
 					
					<li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="logout.jsp">logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
        <br><br>
	<!-- /Header -->
                <%
                   Connection conn = null;
                   Statement stmt = null;
                   ResultSet rs = null;
                  
               
           %>
               <div class="container">
        <h2 align="center">Welcome</h2>
        <div class="row">
                     <% 
             
                
                
                try {
                    // Load MySQL JDBC Driver
                    Class.forName("com.mysql.jdbc.Driver");
                 
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "");
                    String cc=request.getParameter("course");
                   // out.print(cc);
                    // Execute SQL query to retrieve products
                    stmt = conn.createStatement();
                    String sql = "SELECT * FROM addcourse where type='"+cc+"'";
                    rs = stmt.executeQuery(sql);
                    
                    // Iterate over the result set and display products
                    while (rs.next()) {
                      ///  String id = rs.getString("courseid");
                        //session.setAttribute("id",id);
                        
                        //tring name = rs.getString("coursename");
                        //session.setAttribute("name",name);
                        
                        //int duration = rs.getInt("duration");
                        //session.setAttribute("duration",duration);
                        
                        //String des=rs.getString("description");
                        //session.setAttribute("des",des);
                        
                        //String fees=rs.getString("fees");
                        //session.setAttribute("fees",fees);
                        
                      
                       
                        
                      ///  String owner=rs.getString("owner");
                        //session.setAttribute("owner",owner);                        
                        
                       
            
                      //  String image = rs.getString("image_url");
                       
            %>
            <div class="col-md-3">
                <div class="card">
                  
                    <div class="card-body">
                        <img src="img.jsp?id=<%=rs.getInt("courseid")%>" width="170" height="160">
                        <h5 class="card-title"><%=rs.getInt("courseid")%></h5>
                        <p class="card-title"><%=rs.getString("coursename")%></p>
                         <p class="card-text">Description :<%=rs.getString("description")%><p>
                         <p class="card-text">Duration :-<%=rs.getString("duration")%></p>
                           <p class="card-text">Fees :-<%=rs.getString("fees")%></p>
                         
                        
                       
                         <input type="hidden" name="in" value="<%=rs.getString("coursename")%>">
                        <div class="form-group">
                    </div>
                        <button class="btn btn-primary" onClick="addToCart('<%=rs.getString("courseid")%>','<%=rs.getString("coursename")%>','<%=rs.getString("duration")%>','<%=rs.getString("fees")%>')">  Enroll Now </button>
                    </div>
                </div>
            </div>
            <% 
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    // Close database connections
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
        </div>
    </div>
        
    <script>
        function addToCart(cid,cname,duration,fees) {
            //var quantity = document.getElementById('quantity' + productId).value;
            // Perform addition to cart operation here
            //alert('Added ' );
           
            window.open("enroll.jsp?courseid="+cid+"&coursename="+cname+"&duration="+duration+"&fees="+fees);
            alert("Request sent successfully")
            
            
        }
    </script>
   
  

	<!-- Preloader -->
	<div id="preloader"><div class="preloader"></div></div>

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
