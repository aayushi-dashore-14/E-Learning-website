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
        <title>Signup page</title>
    </head>
    <body>
        <%
        Connection connection=null;
        String a = request.getParameter("sn");
        String b =(String)request.getParameter("email");
        String c =(String)request.getParameter("phone");
        String d =(String)request.getParameter("pw");
        String e =(String)request.getParameter("gender");
        String f = request.getParameter("securityQ");
        String g =(String)request.getParameter("answer");
      // Part filePart=request.getPart("photo");
       
   
         try
         {
           Class.forName("com.mysql.jdbc.Driver");
           connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
           InputStream inputStream=null;
           Part filePart=request.getPart("photo");
           if(filePart !=null)
           {
              inputStream=filePart.getInputStream();
              String sql="Insert INTO registration(fullname,email,phone,password,gender,securityQ,answer,photo) values(?,?,?,?,?,?,?,?)";
              PreparedStatement p1=connection.prepareStatement(sql);
              p1.setString(1,a);
              p1.setString(2,b);
              p1.setString(3,c);
              p1.setString(4,d);
              p1.setString(5,e);
              p1.setString(6,f);
              p1.setString(7,g);
            
              p1.setBlob(8,inputStream);
              
              int row=p1.executeUpdate();
              if(row>0)
           {
             %>  
             <script>
                 alert("registration is done sucessfully please go for login");
                 window.location.href="index.jsp";
             </script>
             <%
           }
           }
         }
        catch(Exception e1)
        {
            out.print(e1.toString());
        }
        
        %>
           </body>
</html>

