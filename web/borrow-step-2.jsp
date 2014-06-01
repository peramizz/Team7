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
        <title>SMSA | Borrow</title>
    </head>
 <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div class="container col-sm-12 animated fadeIn" >
            <div class= "row">
                <jsp:include page="WEB-INF/sidebar.jsp"/>
                <div class="col-sm-7 wall back radius10 black">                                        
                    <span style="font-size: 20px; font-weight: bold">Student ID :</span><span style="font-size: 20px;" > 56130500000 </span><br>
                    <span style="font-size: 20px; font-weight: bold">Name:</span><span style="font-size: 20px;" > Mr.Team7 </span><br>
                    <span style="font-size: 20px; font-weight: bold">Surname : </span><span style="font-size: 20px;" > Teamteam </span><br>
                    
                </div>
                <div class="row" style="margin-top: 20px ; margin-bottom: 20px">
                   <div class="col-sm-7">
                    <table style="text-align:center;background-color:rgba(255,255,255,0.9);color:black;"class="table">
                      <tr>
                          <th></th>
                        <th style="text-align:center;">Id</th>
                        <th style="text-align:center;">Picture</th>
                        <th style="text-align:center;">Description</th>
                        <th style="text-align:center;">Avaliable</th>
                        <th style="text-align:center;">Amount</th>
                      </tr>
                      <tr>
                          <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Borrow</span></td>
                        <td>01</td>
                        <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Paint bucket : White</td>
                        <td>4</td>
                        <td><input type="number"></td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Borrow</span></td>
                        <td>02</td>
                        <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Paint bucket : Red</td>
                        <td>2</td>
                        <td><input type="number"></td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Borrow</span></td>
                        <td>03</td>
                        <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Paint bucket : Blue</td>
                        <td>6</td>
                        <td><input type="number"></td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Borrow</span></td> 
                        <td>04</td>
                        <td><img src="image/s2.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Brush</td>
                        <td>20</td>
                        <td><input type="number"></td>
                      </tr>
                      <tr>
                        <td><input type="checkbox"> <span style="font-size: 20px; font-weight: bold; color:blue;">Borrow</span></td>
                        <td>05</td>
                        <td><img src="image/s1.jpg" style="width:100px;height:100px;"></a></td>
                        <td>Drill</td>
                        <td>3</td>
                        <td><input type="number"></td>
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><input type="submit" class="btn btn-danger"></td>
                      </tr>
                    </table>
                </div>

                        
                        
                        
                    </table>
                    
                </div>    
            </div>
        </div>
        <jsp:include page="WEB-INF/footer.jsp"/>