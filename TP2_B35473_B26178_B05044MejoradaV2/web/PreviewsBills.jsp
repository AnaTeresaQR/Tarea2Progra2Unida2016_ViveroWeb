<%@page import="objectModel.Bill_Model"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<!DOCTYPE html>
<%@include file="header.jsp" %>

<div id="menus">
    <%@include file="informationMenu.jsp"%>

    <%@include file="CategoryMenu.jsp"%>
</div>

<div   id="userMenu" >
    <%@include file="SessionMenu.jsp" %>
</div>
<% 
ArrayList<Bill_Model> preview =(ArrayList)session.getAttribute("previewList");
%>

<div id="global">
<% 
for(int i=0;i<preview.size();i++){
%>

    <p id="ellipsis">
        <%= preview.get(i).getBillDate()+": "+preview.get(i).getProducts()  %>
    
</p>

<a href="PreviewPDFController.jsp?bill=<%=preview.get(i).getId()%>">Ver detalle</a>

<% 
}
%>

</div>

<%@include file="footer.jsp" %>