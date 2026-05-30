<%-- 
    Document   : img
    Created on : 17 Jan, 2025, 3:59:36 PM
    Author     : my computers
--%>
<%@page import="java.io.InputStream" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
            Connection con=null;
            PreparedStatement ps=null;
            ResultSet rs=null;
            String sql=null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning","root","");
            Statement st=con.createStatement();
            String em=(String)request.getParameter("id");
            sql="select photo from addcourse where courseid='"+ em+"'";
            rs=st.executeQuery(sql);
            String imglen="";
            
           while(rs.next())
             {
               imglen=rs.getString(1);
               int len=imglen.length();
               byte[] rb=new byte[len];
        InputStream readimg=rs.getBinaryStream(1);
        int index=readimg.read(rb,0,len);
        response.reset();
        
        response.setContentType("image.jsp");
        response.getOutputStream().write(rb,0,len);
        response.getOutputStream().flush();
        
           }
            st.close();
        }
        catch(Exception e)
                               {
            out.println("error"+e);
        }

%>
        
    </body>
</html>
