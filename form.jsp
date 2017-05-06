<%-- 
    Document   : index
    Created on : 2017-5-6, 15:03:32
    Author     : pc
--%>

<%@page import="java.util.List"%>
<%@page import="vo.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table align="center" border="1" cellpadding="1" cellspacing="1" style="width:300px">
                <thead>
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>删除</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        UserDao ud=new UserDao();
                        List<User> users=ud.QueryAll();
                        for(User u:users){
                        out.print("<tr>");
                        out.print("<td>"+u.getUserid()+"</td>");
                        out.print("<td>"+u.getUsername()+"</td>");
                        out.print("<td>"+u.getSex()+"</td>");
                        out.print("<td><a href=\"delete.jsp?userid="+u.getUserid()+"\">删除</a></td>");
                        out.print("</tr>");
                        }
                    %>
                </tbody>
            </table>
                <br/><br/>
                <form align="center" action="insert.jsp" method="POST">
                    学号：<input type="text" name="userid" value=""/><br/><br/>
                    姓名：<input type="text" name="username" value=""/><br/><br/>
                    性别：<input type="text" name="sex" value=""><br/><br/> 
                    <input type="submit" value="submit" name="submit" />
                </form><br/>
               
                
        </body>
</html>
