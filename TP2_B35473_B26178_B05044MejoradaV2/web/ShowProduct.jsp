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
        <jsp:useBean id="productSession" scope="session"  type="xmlProducts.Product"/>

        <p id="name"> Nombre del producto: <%=productSession.getName()%> </p>        
        <p id="longDescription"> Descripcion: <%=productSession.getLongDescription()%> </p>        
        <p id="price"> Precio: <%=productSession.getPrice()%> colones</p>
        <a href="ShoppingCart.jsp?id=<%=productSession.getProductId()%>">Añadir al carrito</a>
        <br>

        <img src="<%= productSession.getUrlPicture1()%>" width="350" height="300" alt="top"/>
        <img src="<%= productSession.getUrlPicture2()%>" width="350" height="300" alt="top"/>
        <img src="<%= productSession.getUrlPicture3()%>" width="350" height="300" alt="top"/>

    </div>
</div>