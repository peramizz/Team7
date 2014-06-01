<%-- 
    Document   : index
    Created on : Jun 1, 2014, 12:02:20 AM
    Author     : Nestsuz Lekjaroen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>SMSoA | Storage Management</title>
        <jsp:include page="WEB-INF/title.jsp"/>
        <style type="text/css">  
            tr{
                margin: 10px;
            }
      </style>
    <body>
         <jsp:include page="WEB-INF/header.jsp"/>
    <div class="container col-sm-12 animated fadeIn">
        <div class="row">
            <jsp:include page="WEB-INF/sidebar.jsp"/>
            <div class="col-sm-7">
                <table style="text-align:center;background-color:rgba(0,0,0,0.4);color:white;"class="table">
                  <tr>
                    <th style="text-align:center;">Id</th>
                    <th style="text-align:center;">Picture</th>
                    <th style="text-align:center;">Description</th>
                    <th style="text-align:center;">Amount</th>
                  </tr>
                  <tr>
                    <td>01</td>
                    <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                    <td>ถังสี : สีขาว</td>
                    <td>4</td>
                  </tr>
                  <tr>
                    <td>02</td>
                    <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                    <td>ถังสี : สีเขียว</td>
                    <td>2</td>
                  </tr>
                  <tr>
                    <td>03</td>
                    <td><img src="image/s4.jpg" style="width:100px;height:100px;"></a></td>
                    <td>ถังสี : สีแดง</td>
                    <td>6</td>
                  </tr>
                  <tr>
                    <td>04</td>
                    <td><img src="image/s2.jpg" style="width:100px;height:100px;"></a></td>
                    <td>แปรงทาสี</td>
                    <td>20</td>
                  </tr>
                  <tr>
                    <td>05</td>
                    <td><img src="image/s1.jpg" style="width:100px;height:100px;"></a></td>
                    <td>สว่าน</td>
                    <td>3</td>
                  </tr>
                </table>
            </div>
            
    
    </div>
    </div>
         <jsp:include page="WEB-INF/footer.jsp"/>
         </body>
</html>
