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
        <button type="button" class="btn btn-info"><a href="new-tool.jsp" style="animation-direction: none;color:whitesmoke">New Tools</a></button>
        <button type="button" class="btn btn-default">Electric Appliance</button>
        <button type="button" class="btn btn-default">Speaker</button>
        <button type="button" class="btn btn-default">Indoor Decoration</button>
        <button type="button" class="btn btn-default">Outdoor Decoration</button>
        <button type="button" class="btn btn-default">Prop</button>
        <button type="button" class="btn btn-default">Fabric</button>
        <button type="button" class="btn btn-default">Wood</button>
    </div>
</div>
