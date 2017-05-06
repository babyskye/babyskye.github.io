<%-- 
    Document   : delete
    Created on : 2017-5-6, 16:15:42
    Author     : pc
--%>

<%@page import="dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete</title>
    </head>
    <body>
     <%
         String userid=request.getParameter("userid");
         UserDao ud=new UserDao();
         ud.delete(userid);
         response.sendRedirect("form.jsp");
     %>
    </body>
</html>
