
<%@page import="xmlProducts.Product"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerAdmin.jsp" %>

<!DOCTYPE html>
<div id="showProduct">
    <jsp:useBean id="product" scope="session" class="xmlProducts.Product" />

    <p>Producto: <jsp:getProperty name="product" property="name" /></p>
    <p>ID: <jsp:getProperty name="product" property="productId" /></p>
    <p>Categoría: <jsp:getProperty name="product" property="category" /></p>
    <p>Descripción breve: <jsp:getProperty name="product" property="shortDescription" /></p>
    <p>Descripción detallada: <jsp:getProperty name="product" property="longDescription" /></p>
    <p>Precio: <jsp:getProperty name="product" property="price" /></p>
    <p>Cantidad de unidades vendidadas: <jsp:getProperty name="product" property="productSold" /></p>
    <p>Cantidad de unidades disponibles: <jsp:getProperty name="product" property="productForSell" /></p>
    <img src="../<jsp:getProperty name="product" property="urlPicture1" />" width="200" height="200" alt="top1"/>

    <%
        // en el caso de no encontrar la imagen no la muestra en la página
        if (!product.getUrlPicture2().equalsIgnoreCase("urlProduct2") || !product.getUrlPicture2().equalsIgnoreCase("urlPicture2")) {
    %>
    <img src="../<jsp:getProperty name="product" property="urlPicture2" />" width="200" height="200" alt="top2"/>
    <%
        }
    %>
    <%
        // en el caso de no encontrar la imagen no la muestra en la página
        if (!product.getUrlPicture3().equalsIgnoreCase("urlProduct3") || !product.getUrlPicture3().equalsIgnoreCase("urlPicture3")) {
    %>
    <img src="../<jsp:getProperty name="product" property="urlPicture3" />" width="200" height="200" alt="top3"/>
    <%
        }
    %>

    <br><br>
    <a href="ProductsAdministrator.jsp" class="buttonsAction">Regresar</a>
</div>
<%@include file="footerAdmin.jsp" %>
