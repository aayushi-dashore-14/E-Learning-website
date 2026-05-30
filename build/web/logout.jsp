<%-- 
    Document   : logout
    Created on : 30 Nov, 2024, 4:03:32 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session.removeValue("email");
        session.removeValue("mob");
        session.invalidate();
        response.setHeader("pragma", "no-cache");
        response.setHeader("Cache-Control","No-store");
         response.setHeader("Cache-Control","must-revalidate");
       response.setDateHeader("expires", 0);
       %>
       <script>
           alert("You have been successfully Logout");
           window.location.href="index.jsp";
       </script>
    </body>
</html>
