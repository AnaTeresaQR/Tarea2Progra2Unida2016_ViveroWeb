<%@page import="java.util.List"%>
<%@page import="xmlProducts.Product"%>
<%@page import="xmlProducts.CartManager"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@include file="header.jsp" %>    
<div id="menus">
    <%@include file="informationMenu.jsp"%>
    <%@include file="CategoryMenu.jsp"%>
</div>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="global">

    <%
        Product newProduct = (Product) session.getAttribute("product");
    %>
    
    <p>Digite la cantidad de Productos que desea </p>
    <div class="products">
        <p id="name">Nombre del producto: <%=newProduct.getName()%></p>
        <p id="price"> Precio: <%=newProduct.getPrice()%></p>
        <p>Cantidad:</p> 
        <form action="AddtoCartController.jsp">

            <input type="number" id ="amount" name="amount" value="" min="1" required/>
            <input type="hidden" name="id" value="<%=newProduct.getProductId()%>"/>
            <br>
            <br>
            <input id="ButtonAddProduct" type="submit" value="Confirmar"> 
        </form>
    </div>

    <%@include file="footer.jsp"%>
