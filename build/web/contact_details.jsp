<%-- 
    Document   : C
    Created on : 7 Nov, 2024, 4:18:57 PM
    Author     : Lenovo
--%>
<%-- 
    Document   : o
    Created on : 6 Nov, 2024, 5:27:12 PM
    Author     : Lenovo
--%>
<%@page import="java.io.InputStream" %>
<%@page import="java.sql.*" 
        import="javax.servlet.annotation.MultipartConfig"
        import="javax.servlet.http.Part" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Feedback details</title>
    </head>
    <body>
        <%
        Connection connection=null;
        String a =(String)request.getParameter("name");
        String b =(String)request.getParameter("email");
        String c =(String)request.getParameter("subject");
        String d =(String)request.getParameter("message");
       
       
   
         try
         {
           Class.forName("com.mysql.jdbc.Driver");
           connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
          
              String sql="Insert INTO feedback(name,email,subject,message) values(?,?,?,?)";
              PreparedStatement p1=connection.prepareStatement(sql);
              p1.setString(1,a);
              p1.setString(2,b);
              p1.setString(3,c);
              p1.setString(4,d);
           
            
            int row=p1.executeUpdate();
              if(row>0)
           {
             %>  
             <script>
                 alert("feedback send sucessfully ");
                 window.location.href="index.jsp";
             </script>
             <%
           }
           }
         
        catch(Exception e1)
        {
            out.print(e1.toString());
        }
        
        %>
           </body>
</html>

