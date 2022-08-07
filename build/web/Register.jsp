<%-- 
    Document   : newjsp
    Created on : Aug 5, 2022, 7:05:22 PM
    Author     : ASUS
--%>

<%@page import="UsersDAO.usersDAO"%>
<%@page import="UsersBean.usersBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("N");
            String usern=request.getParameter("UN");
            String pass=request.getParameter("P");
            String usert=request.getParameter("UT");
            
            usersBean ub=new usersBean();
            ub.setName(name);
            ub.setUserName(usern);
            ub.setPassword(pass);
            ub.setUserType(usert);
            
            usersDAO ud=new usersDAO();
            boolean b=ud.register(ub);
            if(b){
                response.sendRedirect("login.html");   
            }
        %>
    </body>
</html>
