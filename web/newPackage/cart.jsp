<%-- 
    Document   : cart
    Created on : May 31, 2014, 3:03:46 PM
    Author     : rachatapon
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        ArrayList cart=(ArrayList) request.getSession().getAttribute("cart");
        for(Object o:cart){
            out.println((String)o);
        }
        %>
    </body>
</html>
