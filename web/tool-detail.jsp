<%-- 
    Document   : tool-detail
    Created on : Jun 1, 2014, 12:32:41 AM
    Author     : Nestsuz Lekjaroen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title></title>
        <jsp:include page="WEB-INF/title.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div class="container col-sm-12 animated fadeIn">
            <div class="row">
                <jsp:include page="WEB-INF/sidebar.jsp"/>
                <div class="col-sm-8 well" style="color: #269abc">
                    <div class="row">
                        <div class="col-sm-4"><img src="image/s2.jpg" width="80%" height="80%">
                            <input type="file" class="form-control" style="margin: 10px 0px 10px 0px;"><button type="submit">Upload</button>
                        </div>
                        <div class="col-sm-3"><h1>Brush</h1></div>
                        <div class="col-sm-4">
                             <div class="checkbox">
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
                            <span class="glyphicon glyphicon-save" style="font-size: 20px"></span>
                            <span class="glyphicon glyphicon-trash"></span>
                        </div>
                    </div>    
                    <div class="row">
                        <hr>
                        <table class="table">
                            <tr>
                                <th>Id</th>   
                                <th>Detail</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>1</td>   
                                <td><textarea></textarea></td>
                                <td><span class="glyphicon glyphicon-ok" style="font-size: 20px;color:greenyellow;"></span></td>
                                <td><span class="glyphicon glyphicon-save" style="font-size: 20px"></span>
                            <span class="glyphicon glyphicon-trash"></span></td>
                            </tr>
                            <tr>
                                <td>2</td>   
                                <td><textarea></textarea></td>
                                <td><span class="glyphicon glyphicon-user" style="font-size: 20px;color:gray"></span></td>
                                <td><span class="glyphicon glyphicon-save" style="font-size: 20px"></span>
                            <span class="glyphicon glyphicon-trash"></span></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="WEB-INF/footer.jsp"/>
    </body>
</html>
