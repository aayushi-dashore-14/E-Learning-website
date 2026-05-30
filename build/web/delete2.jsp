<%-- 
    Document   : delete2
    Created on : 29 May, 2025, 11:53:34 AM
    Author     : Dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
        
         
          try{
          Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
       PreparedStatement p1 =null;
       String sql=null;
       
       int h1=Integer.parseInt(request.getParameter("h"));
       out.print(h1);
       sql="delete from addcourse where courseid=?";
       p1 = con.prepareStatement(sql);
       p1.setInt(1, h1);
       
       int y=p1.executeUpdate();
       if(y==1)
                     {
           out.print("record delete");
       }
       else
                     {
           out.print("record not delete");
       }
       }
      catch(Exception e)
      {
          e.printStackTrace();
      }                         
                             
        %>
    </body>
</html>
