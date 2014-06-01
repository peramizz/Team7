<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/title.jsp"/> 
        <title>SMSA | Return</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div class="container col-sm-12 animated fadeIn">
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
