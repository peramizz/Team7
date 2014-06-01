<%-- 
    Document   : borrow-step-1
    Created on : Jun 1, 2014, 12:11:51 AM
    Author     : Nestsuz Lekjaroen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SMSA | Borrow</title>
        <jsp:include page="WEB-INF/title.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div style="height:575px;" class="container  col-sm-12 animated fadeIn">
            <div class="row">
                <jsp:include page="WEB-INF/sidebar.jsp"/>
                <div class="col-sm-3 well">                                        
                    <center><p>Student Id : <input type="text" required> </p></center>
                    <button type="submit" class="pull-right">Next</button>                   
                </div>
            </div>
        </div>
        <jsp:include page="WEB-INF/footer.jsp"/>
    </body>
</html>
