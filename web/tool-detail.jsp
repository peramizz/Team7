<%-- 
    Document   : tool-detail
    Created on : Jun 1, 2014, 12:32:41 AM
    Author     : Nestsuz Lekjaroen
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Tool"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Tool t = (Tool)request.getAttribute("tool");
            
        %>
        <title>SMSoA | <%=t.getName()%></title>
        <jsp:include page="WEB-INF/title.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div class="container col-sm-12 animated fadeIn">
            <div class="row">
                <jsp:include page="WEB-INF/sidebar.jsp"/>
                <div class="col-sm-8 back radius10">
                    <div class="row">
                        <form action="changetool"  method="post" enctype="multipart/form-data">
                        <div class="col-sm-4"><img src="<%=t.getPicture()%>" width="80%" height="80%">
                            <input type="file" class="form-control" style="margin: 10px 0px 10px 0px;" name="upload">
                            <input type="hidden" name="id" value="<%=t.getId()%>">
                        </div>
                        <div class="col-sm-3"><h1><%=t.getName()%></h1></div>
                        <div class="col-sm-4">
                             <div class="checkbox">
                                <label>
                                  <input type="checkbox" <%=t.getTags().contains("Speaker")?"checked":""%> name="tag" value="Speaker"> Speaker
                                </label>
                              </div>
                             <div class="checkbox">
                                <label>
                                    <input type="checkbox" <%=t.getTags().contains("Indoor Decoration")?"checked":""%> name="tag" value="Indoor Decoration"> Indoor Decoration
                                </label>
                              </div>
                             <div class="checkbox">
                                <label>
                                    <input type="checkbox" <%=t.getTags().contains("Outdoor Decoration")?"checked":""%> name="tag" value="Outdoor Decoration"> Outdoor Decoration
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" <%=t.getTags().contains("Prop")?"checked":""%> name="tag" value="Prop"> Prop
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" <%=t.getTags().contains("Fabric")?"checked":""%> name="tag" value="Fabric"> Fabric
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" <%=t.getTags().contains("Wood")?"checked":""%> name="tag" value="Wood"> Wood
                                </label>
                              </div>
                            <div class="checkbox">
                                <label>
                                  <input type="checkbox" <%=t.getTags().contains("Electric Appliance")?"checked":""%> name="tag" value="Electric Appliance"> Electric Appliance
                                </label>
                              </div>
                        </div> 
                        <div class="col-sm-1">
                            <button type="submit">
                            <span class="glyphicon glyphicon-save" style="font-size: 20px"></span>
                            </button>
                            <a href="deletetool?id=<%=t.getId()%>&search=<%=request.getParameter("search")%>">
                            <span class="glyphicon glyphicon-trash"></span>
                            </a>
                        </div>
                        </form>
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
