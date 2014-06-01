<%-- 
    Document   : index
    Created on : Jun 1, 2014, 12:02:20 AM
    Author     : Nestsuz Lekjaroen
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Tool"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>      
	<title>SMSA | Storage Management</title>
        <jsp:include page="WEB-INF/title.jsp"/>
    <body>
         <jsp:include page="WEB-INF/header.jsp"/>
    <div class="container col-sm-12 animated fadeIn">
        <div class="row">
            <jsp:include page="WEB-INF/sidebar.jsp"/>
            <div class="col-sm-7">
                <%
                    List<Tool> tools = null;
                if(request.getAttribute("resultsearch")==null){
                    tools = Tool.findByName("");
                }else{
                    tools = (List)request.getAttribute("resultsearch");
                }
                
                %>
                <table style="text-align:center;background-color:rgba(255,255,255,0.9);color:black;"class="table">
                  <tr>
                    <th style="text-align:center;">Picture</th>
                    <th style="text-align:center;">Name</th>
                    <th style="text-align:center;">Amount</th>
                    <th style="text-align:center;">TAG</th>
                  </tr>      
                <%
                    String search=request.getParameter("search");
                    if(search==null){
                    search="";
                    }   
                  for(Tool t:tools){
                      out.print("<tr>");
                        out.print("<td>");
                        out.print("<a href='tooldetail?idtool="+t.getId()+"&search="+search+"'><img src='"+t.getPicture()+"'style='width:100px;height:100px;'></a>");
                        out.print("</td>");
                        out.print("<td>");
                        out.print(t.getName());
                        out.print("</td>");
                        out.print("<td>");
                        out.print(t.getItems().size());
                        out.print("</td>");
                        out.print("<td>");
                        out.print(t.toTagHTML());
                        out.print("</td>");
                      out.print("</tr>");
                  }
                  %>
                </table>
            </div>
    </div>
    </div>
         <jsp:include page="WEB-INF/footer.jsp"/>
         </body>
</html>
