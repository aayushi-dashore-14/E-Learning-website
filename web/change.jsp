<%-- 
    Document   : change
    Created on : 11 May, 2025, 8:56:23 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
            <form name="cf" method="post" action="updatepassword.jsp"> 
                <table align="center" bgcolor="#FFcccc">
                    <tr>
                        <td> Email</td>
                        <td>
                            <input type="text" name="email" value="<%=session.getAttribute("email")%>">
                        </td>
                    </tr>
                    
                     <tr>
                        <td> New Password</td>
                        <td>
                            <input type="text" name="newpw" >
                        </td>
                    </tr>
                    
                    <tr>
                        <td> confirm Password</td>
                        <td>
                            <input type="text" name="conpw">
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="change">
                        </td>
                    </tr>
                    
                </table>    
            </form>
               
                
    </body>
</html>
