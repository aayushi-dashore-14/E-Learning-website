<%-- 
    Document   : AddPhoto
    Created on : 18 Nov, 2024, 4:34:10 PM
    Author     : Lenovo
--%>
<%@page import="java.io.InputStream" %>
<%@page import="java.sql.*"
        import="javax.servlet.annotation.MultipartConfig"
        import="javax.servlet.http.*"
        %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> online course management </title>
    </head>
    <body>
        <% 
        String em=(String)  session.getAttribute("email");
       //response.sendRedirect("student_home.jsp");
    //   response.sendRedirect("student_home.jsp");
       
      Connection connection=null;
        String a=(String)request.getParameter("courseid");
      String b=(String)request.getParameter("coursename");
      String c=(String)request.getParameter("duration");
      String d=(String)request.getParameter("fees");
      
     
      
      try
       {
           Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
    
    InputStream inputStream=null;
   
    
   
             
       String sql="insert INTO student_enrollment( username,courseid,coursename,duration,fees) values(?,?,?,?,?)";
       PreparedStatement p1=con.prepareStatement(sql);
       p1.setString(1,em);
       p1.setString(2,a);
       p1.setString(3,b);
       p1.setString(4,c);
       p1.setString(5,d);
       
      
      
       int row=p1.executeUpdate();
       if(row>0)
      {
      %>
      
      <script>
          alert("You has been sucessfully enrolled");
          window.location.href='student_home.jsp';
          
      </script>
      <%
         }
             else{
           %>
             <script>
          alert("try again");
          window.location.href='student_home.jsp';
          
      </script>
      <%               }
                }  
      
      catch(Exception e1)
       {
          out.print(e1.toString());
      }
      %>
    </body>
</html>
