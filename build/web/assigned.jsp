<%-- 
    Document   : assigned
    Created on : Aug 7, 2022, 6:50:49 PM
    Author     : ASUS
--%>

<%@page import="UsersDAO.usersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String tt=request.getParameter("TT");
            String at=request.getParameter("AT");
            String d=request.getParameter("D");
            String td=request.getParameter("TD");
            
            usersDAO ud=new usersDAO();
            boolean b=ud.training(tt, at, d, td);
            if(b){
                response.sendRedirect("superadmin.jsp");
            }

        %>
    </body>
</html>
