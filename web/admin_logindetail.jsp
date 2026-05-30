<%-- 
    Document   : check
    Created on : 11 Nov, 2024, 5:16:17 PM
    Author     : Lenovo
--%>
<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check the login details of admin </title>
    </head>
    <body>
        <%
try
{
    String email =request.getParameter("email");
    String password=request.getParameter("pw");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
    Statement st=con.createStatement(); 
    ResultSet rs=st.executeQuery("Select * from adminlogin where email='"+email+"' and password='"+password+"'");
    if(rs.next())
     {
       session.setAttribute("email",email);
       response.sendRedirect("admin_home.jsp");
    }
    else
    {
        %>
        <script>
            alert("invalid login please try again");
            window.location='admin_login.jsp';
        </script>
        <%
    }
}         
catch(Exception e)
{
  out.print(e.toString());  
}                  
%>
    </body>
</html>
