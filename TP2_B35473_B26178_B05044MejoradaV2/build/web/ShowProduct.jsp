<%@page import="xmlProducts.Product"%>
<%@include file="header.jsp" %> 

<div id="menus">
    <%@include file="informationMenu.jsp"%>

    <%@include file="CategoryMenu.jsp"%>
</div>

<div   id="userMenu" >
    <%@include file="SessionMenu.jsp" %>
</div>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="global">

    <div id="top10">
        <jsp:useBean id="productSession" scope="session"  type="xmlProducts.Product"/>

        <p id="name"> Nombre del producto: <%=productSession.getName()%> </p>        
        <p id="longDescription"> Descripcion: <%=productSession.getLongDescription()%> </p>        
        <p id="price"> Precio: <%=productSession.getPrice()%> colones</p>
        <a href="AddProductController.jsp?id=<%=productSession.getProductId()%>">Añadir al carrito</a>
        <br>

        <img src="<%= productSession.getUrlPicture1()%>" width="350" height="300" alt="top1"/>


        <%
            // en el caso de no encontrar la imagen no la muestra en la página
            if (!productSession.getUrlPicture2().equalsIgnoreCase("urlProduct2") || !productSession.getUrlPicture2().equalsIgnoreCase("urlPicture2")) {
        %>
        <img src="<%= productSession.getUrlPicture2()%>" width="350" height="300" alt="top2"/>
        <%
            }
        %>

        <%
            // en el caso de no encontrar la imagen no la muestra en la página
            if (!productSession.getUrlPicture3().equalsIgnoreCase("urlProduct3") || !productSession.getUrlPicture3().equalsIgnoreCase("urlPicture3")) {
        %>
        <img src="<%= productSession.getUrlPicture3()%>" width="350" height="300" alt="top3"/>
        <%
            }
        %>


    </div>
</div>

<%@include file="footer.jsp"%>