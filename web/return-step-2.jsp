<%-- 
    Document   : return-step-2
    Created on : Jun 1, 2014, 11:40:32 AM
    Author     : Peerapong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/title.jsp"/> 
        <title>SMSA | Return</title>
    </head>
 <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div class="container col-sm-12 animated fadeIn" >
            <div class= "row">
                <jsp:include page="WEB-INF/sidebar.jsp"/>
                <div style="padding:20px; margin-bottom: 30px"class="col-sm-7 wall radius10 back black">
                    <table >
                        <tr>
                            <td><span style="font-size: 20px; font-weight: bold">Student ID :&nbsp;&nbsp;&nbsp;</span></td>
                            <td><span style="font-size: 20px;" > ???? </span></td>
                        </tr>
                        <tr>
                            <td><span style="font-size: 20px; font-weight: bold">Name :  </span></td>
                            <td><span style="font-size: 20px;" > ???? </span></td>
                        </tr>
                        <tr>
                            <td><span style="font-size: 20px; font-weight: bold">Surname :  </span></td>
                            <td><span style="font-size: 20px;" > ???? </span></td>
                        </tr>
                    </table>         
                </div>
                <div class="row" style="margin-top: 20px ; margin-bottom: 20px">
                   <div class="col-sm-7">
                    <table style="text-align:center;background-color:rgba(255,255,255,0.9);color:black;"class="table">
                      <tr>
                          <th></th>
                        <th style="text-align:center;">Id</th>
                        <th style="text-align:center;">Picture</th>
                        <th style="text-align:center;">Description</th>
                        <th style="text-align:center;">Amount</th>
                      </tr>
                      <tr>
                          <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Return</span></td>
                        <td>01</td>
                        <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Paint bucket : White</td>
                        <td>4</td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Return</span></td>
                        <td>02</td>
                        <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Paint bucket : Red</td>
                        <td>2</td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Return</span></td>
                        <td>03</td>
                        <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Paint bucket : Blue</td>
                        <td>6</td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Return</span></td> 
                        <td>04</td>
                        <td><img src="image/s2.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Brush</td>
                        <td>20</td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Return</span></td>
                        <td>05</td>
                        <td><img src="image/s1.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Drill</td>
                        <td>3</td>
                      </tr>
                    </table>
                    <a href="borrow-step-1.jsp" ><button type="button" class="btn btn-info pull-left" style="margin:30px 0px 0px 50px">Back</button></a> 
                    <button type="button" class="btn btn-danger pull-right" style="margin:30px 50px 0px 0px">Submit</button>
                </div>

                        
                        
                        
                    </table>
                    
                </div>    
            </div>
        </div>
        <jsp:include page="WEB-INF/footer.jsp"/>