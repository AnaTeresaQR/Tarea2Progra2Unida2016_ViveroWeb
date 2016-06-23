<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
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
            String id = request.getParameter("id");
            ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));

            Product product = mx.getProductById(id);

        %>

        <p id="name"> Nombre del producto: <%=product.getName()%> </p>        
        <p id="longDescription"> Descripcion: <%=product.getLongDescription()%> </p>        
        <p id="price"> Precio: <%=product.getPrice()%> colones</p>
        <a href="ShoppingCart.jsp?id=<%=product.getProductId()%>">Añadir al carrito</a>
        <br>
        
        <img src="<%= product.getUrlPicture1()%>" width="350" height="300" alt="top"/>
        <img src="<%= product.getUrlPicture2()%>" width="350" height="300" alt="top"/>
        <img src="<%= product.getUrlPicture3()%>" width="350" height="300" alt="top"/>


    </div>
</div>