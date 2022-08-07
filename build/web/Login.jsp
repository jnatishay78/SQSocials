<%-- 
    Document   : Login
    Created on : Aug 6, 2022, 3:50:29 AM
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
            String un=request.getParameter("UN");
            String pass=request.getParameter("P");
            String ut=request.getParameter("UT");
            
            usersDAO ud=new usersDAO();
            int r=ud.loginCheck(un, pass, ut);
            
            if(r!=0 && ut.equalsIgnoreCase("Super Admin")){
                session.setAttribute("username", un);
                response.sendRedirect("superadmin.jsp");
            }
            else if(r!=0 && ut.equalsIgnoreCase("Admin")){
                session.setAttribute("username", un);
                response.sendRedirect("admin.jsp");
            }
            else if(r!=0 && ut.equalsIgnoreCase("Employee")){
                session.setAttribute("username", un);
                response.sendRedirect("employee.jsp");
            }
            else if(r!=0 && ut.equalsIgnoreCase("Customer")){
                session.setAttribute("username", un);
                response.sendRedirect("customer.jsp");
            }
        %>
    </body>
</html>
