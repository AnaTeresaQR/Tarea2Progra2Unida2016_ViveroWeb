<%@page import="xmlProducts.Product"%>
<%@include file="header.jsp" %> 
<div id="menus">
    <%@include file="informationMenu.jsp"%>
    <%@include file="CategoryMenu.jsp"%>
</div>
<%@include file="footer.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="global">

    <div id="top10">

        <%
            Product productS = (Product) session.getAttribute("productSession");
           
        %>

        <p id="name"> Nombre del producto: <%=productS.getName()%> </p>        
        <p id="longDescription"> Descripcion: <%=productS.getLongDescription()%> </p>        
        <p id="price"> Precio: <%=productS.getPrice()%> colones</p>
        <a href="ShoppingCart.jsp?id=<%=productS.getProductId()%>">Añadir al carrito</a>
        <br>

        <img src="<%= productS.getUrlPicture1()%>" width="350" height="300" alt="top"/>
        <img src="<%= productS.getUrlPicture2()%>" width="350" height="300" alt="top"/>
        <img src="<%= productS.getUrlPicture3()%>" width="350" height="300" alt="top"/>


    </div>
</div>