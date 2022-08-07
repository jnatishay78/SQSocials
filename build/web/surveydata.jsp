<%-- 
    Document   : surveydata
    Created on : Aug 8, 2022, 3:00:33 AM
    Author     : ASUS
--%>

<%@page import="UsersBean.SurveyBean"%>
<%@page import="UsersDAO.SurveyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String n=request.getParameter("N");
        String e=request.getParameter("E");
        int a=Integer.parseInt(request.getParameter("A"));
        String g=request.getParameter("G");
        String j=request.getParameter("J");
        int d=Integer.parseInt(request.getParameter("D"));
        int m=Integer.parseInt(request.getParameter("M"));
        int s=Integer.parseInt(request.getParameter("S"));
        String ne=request.getParameter("NE");
        String f=request.getParameter("F");
        String gy=request.getParameter("GY");
        String c=request.getParameter("C");
        
        SurveyBean sb=new SurveyBean();
        sb.setName(n);
        sb.setEmail(e);
        sb.setAge(a);
        sb.setGender(g);
        sb.setJob(j);
        sb.setDuration(d);
        sb.setMean(m);
        sb.setSati(s);
        sb.setNextpos(ne);
        sb.setFuture(f);
        sb.setGym(gy);
        sb.setComments(c);
        
        SurveyDAO sd=new SurveyDAO();
        boolean b=sd.entry(sb);
        if(b){
            response.sendRedirect("survey.jsp");
        }
        
        %>
    </body>
</html>
