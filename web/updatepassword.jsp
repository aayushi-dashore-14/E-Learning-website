<%-- 
    Document   : updatepassword
    Created on : 11 May, 2025, 9:21:38 PM
    Author     : Dell
--%>


<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          String email =request.getParameter("email");
          
    String New = request.getParameter("newpw");
   
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
    
    ResultSet rs = null;
    
    String sql = "update registration set password='"+New+"' where email='"+email+"'";
   
    PreparedStatement p= con.prepareStatement(sql);
    int p1=0;
    p1 = p.executeUpdate();
    if(p1>0)
               {
        %>
        <script>
            alert("new password set successfully");
            window.location.href="index.jsp";
        </script>
        <%
         }
    else
               {
        %>
        <script>
            alert("try again");
            window.location.href='index.jsp';
        </script>
        <%
    } }
    catch(Exception e)
                       {
        out.print(e);
    }
    %>
    </body>
</html>
