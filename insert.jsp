<%-- 
    Document   : insert
    Created on : 2017-5-6, 15:24:06
    Author     : pc
--%>

<%@page import="dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert</title>
    </head>
    <body>
        <jsp:useBean id="u" scope="request" class="vo.User" />
        <%
            request.setCharacterEncoding("utf-8");
        %>
        <jsp:setProperty name="u" property="*"/>

        <%
            UserDao ud = new UserDao();
            ud.add(u);
            response.sendRedirect("form.jsp");
        %>
    </body>
</html>
