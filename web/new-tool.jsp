<%-- 
    Document   : tool-detail
    Created on : Jun 1, 2014, 12:32:41 AM
    Author     : Nestsuz Lekjaroen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>SMSA | New Tools</title>
        <jsp:include page="WEB-INF/title.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div  style="min-height:575px;" class="container col-sm-12 animated fadeIn">
            <div class="row">
                <jsp:include page="WEB-INF/sidebar.jsp"/>
                <div style="padding: 20px" class="col-sm-8 back radius10">
                    <div class="row">
                        <div class="col-sm-4">
                            <div style="width: 300px;height:300px;"></div>
                            <input type="file" class="form-control" style="margin: 10px 0px 10px 0px;">
                        </div>
                        <div class="col-sm-3">
                            <div><h4>Tools name : </h4></div>
                            <input type="text" placeholder="insert tool's name...">
                        </div>
                        <div class="col-sm-4">
                             <div class="checkbox">
                                 <div><h4>Add Tool's Tag</h4></div>
                                <label>
                                  <input type="checkbox"> Speaker
                                </label>
                              </div>
                             <div class="checkbox">
                                <label>
                                  <input type="checkbox"> Indoor Decoration
                                </label>
                              </div>
                             <div class="checkbox">
                                <label>
                                  <input type="checkbox"> Outdoor Decoration
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                  <input type="checkbox"> Prop
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                  <input type="checkbox"> Fabric
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                  <input type="checkbox"> Wood
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                  <input type="checkbox"> Electric Appliance
                                </label>
                              </div>
                        </div> 
                        <div class="col-sm-1">
                            <span class="glyphicon glyphicon-save" style="font-size: 20px;margin: 400px 0px 0px 0px""></span>
                            <span class="glyphicon glyphicon-trash" style="font-size: 20px;margin: 400px 0px 0px 20px"></span>              
                        </div>
                    </div>    
                </div>
            </div>
        </div>
        <jsp:include page="WEB-INF/footer.jsp"/>
    </body>
</html>
