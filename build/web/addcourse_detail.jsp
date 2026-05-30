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
      Connection connection=null;
        String a=(String)request.getParameter("id");
      String b=(String)request.getParameter("cn");
      String c=(String)request.getParameter("ct");
      String d=(String)request.getParameter("cd");
      String e=(String)request.getParameter("description");
      String f=(String)request.getParameter("fees");
     
      
      try
       {
           Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
    
    InputStream inputStream=null;
   
    
    Part filePart=request.getPart("photo");
   
    if(filePart!=null)
               {
        out.println(filePart.getName());
         out.println(filePart.getSize());
          out.println(filePart.getContentType());
          
          inputStream=filePart.getInputStream();
          
             
       String sql="insert INTO addcourse(coursename,type,duration,description,fees,photo) values(?,?,?,?,?,?)";
       PreparedStatement p1=con.prepareStatement(sql);
       
       p1.setString(1,b);
       p1.setString(2,c);
       p1.setString(3,d);
       p1.setString(4,e);
       p1.setString(5,f);
       p1.setBlob(6,inputStream);
      
      
       int row=p1.executeUpdate();
       if(row>0)
      {
      %>
      
      <script>
          alert("Course added successfully ");
          window.location.href='admin_home.jsp';
          
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
