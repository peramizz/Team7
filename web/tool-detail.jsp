<%-- 
    Document   : tool-detail
    Created on : Jun 1, 2014, 12:32:41 AM
    Author     : Nestsuz Lekjaroen
--%>
<%@page import="model.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Tool"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Tool t = (Tool)request.getAttribute("tool");
            String search=request.getParameter("search");
            if(search==null)search="";
            
        %>
        <title>SMSoA | <%=t.getName()%></title>
        <jsp:include page="WEB-INF/title.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/header.jsp"/>
        <div  class="container col-sm-12 animated fadeIn">
            <div class="row">
                <jsp:include page="WEB-INF/sidebar.jsp"/>
                <div class="col-sm-8 back radius10">
                    <div class="row">
                        <form action="changetool"  method="post" enctype="multipart/form-data">
                           <div class="col-sm-4"><img src="<%=t.getPicture()%>" width="80%" height="80%">
                                <input type="file" class="form-control" style="margin: 10px 0px 10px 0px;" name="upload">
                                <input type="hidden" name="id" value="<%=t.getId()%>">
                                <input type="hidden" name="search" value="<%=search%>">
                            </div>
                            <div class="col-sm-3">
                                <div><h4>Tools name : </h4></div>
                                <h1><%=t.getName()%></h1>
                            </div>
                        <div class="col-sm-3">
                             <div class="checkbox">
                                 <div><h4>-- Tool's Tag --</h4></div>
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
                        <div class="col-sm-2">
                            <button type="submit" class="btn-link">
                                <span class="glyphicon glyphicon-save" style="font-size: 20px;margin: 20px 0px 0px 0px""></span>
                            </button>
                            <a href="deletetool?id=<%=t.getId()%>&search=<%=search%>">
                                <span class="glyphicon glyphicon-trash" style="font-size: 20px;margin: 20px 0px 0px 20px"></span>
                            </a>
                        </div>
                        </form>
                    </div>    
                    <div class="row">
                        <hr>
                        <a href='additem?idtool=<%=t.getId()%>&search=<%=search%>'>
                                <span class='glyphicon glyphicon-plus' style="color: green;" ></span>
                            </a> Add New ITEM
                        <table class="table">
                            <tr>
                                <th>Id</th>   
                                <th>Detail</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        
                            <%
                            List<Item> items = t.getItems();
                            for(Item it:items){
                                out.print("<form action='changeitem'  method='post' enctype='multipart/form-data'>");
                                out.print("<tr>");
                                    out.print("<td>"+it.getId());
                                    out.print("</td>");
                                    out.print("<td><textarea style='width:100%' name='detail'>"+it.getDetail()+"</textarea>");
                                    out.print("</td>");
                                    if(it.isAvaliable()){
                                    out.print("<td><span class='glyphicon glyphicon-ok' style='font-size: 20px;color:greenyellow;'></span>");
                                    out.print("</td>");
                                    }else{
                                       out.print("<td><span class='glyphicon glyphicon-user' style='font-size: 20px;color:gray'></span></td>");
                                    }
                                    out.print("<td>");
                                        out.print("<button type='submit' class='btn-link'><span class='glyphicon glyphicon-save'></span></button><a href='deleteitem?idtool="+t.getId()+"&iditem="+it.getId()+"&search="+search+"'><span class='glyphicon glyphicon-trash' ></span></a>");
                                    out.print("</td>");
                                out.print("</tr>");
                                out.print("<input type='hidden' name='idtool' value='"+t.getId()+"'>");
                                out.print("<input type='hidden' name='iditem' value='"+it.getId()+"'>");
                                out.print("<input type='hidden' name='search' value='"+search+"'>");
                                out.print("</form>");
                            }
                            %>         
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="WEB-INF/footer.jsp"/>
    </body>
</html>