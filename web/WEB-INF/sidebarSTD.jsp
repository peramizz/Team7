<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-2">
    <%
    String search=request.getParameter("search");
    if(search==null){
        search="";
    }
    %>
    <div class="btn-group-vertical">
        <h3>Search Tools</h3>
        <form action="keywordsearch">
            <table>
                <tr>
                    <td><input type="text" class="form-control" name="search" value="<%=search%>"></td>
                    <td><button type="submit" class="btn-default btn">Submit</button></td>
            </tr>
            </table>
        </form>
        <hr>
        <a href="getcatalog?tag=Electric+Appliance"><button type="button" class="btn btn-default btn-block">Electric Appliance</button></a>
        <a href="getcatalog?tag=Speaker"><button type="button" class="btn btn-default btn-block">Speaker</button></a>
        <a href="getcatalog?tag=Indoor+Decoration"><button type="button" class="btn btn-default btn-block">Indoor Decoration</button></a>
        <a href="getcatalog?tag=Outdoor+Decoration"><button type="button" class="btn btn-default btn-block">Outdoor Decoration</button></a>
        <a href="getcatalog?tag=Prop"><button type="button" class="btn btn-default btn-block">Prop</button></a>
        <a href="getcatalog?tag=Fabric"><button type="button" class="btn btn-default btn-block">Fabric</button></a>
        <a href="getcatalog?tag=Wood"><button type="button" class="btn btn-default btn-block">Wood</button></a>
    </div>
</div>

