<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page import="buy.CartManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<script src="js/EncriptNumCard.js" type="text/javascript"></script>

<%@include file="header.jsp" %>

<div id="menus">
    <%@include file="informationMenu.jsp"%>

    <%@include file="CategoryMenu.jsp"%>
</div>

<div   id="userMenu" >
    <%@include file="SessionMenu.jsp" %>
</div>

<%    CartManager cm = CartManager.getInstance();
    ProductsXmlManager manager = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
    manager.buyProductById(cm.getProductsCart(), cm.getQuantityCart());
    cm.clean();
    
%>

<div class="formClass">

    <iframe src="BuildBill.jsp" width="400px" height="400px"></iframe>
    <button onclick="exportPDF()">Exportar</button>
</div>

<%@include file="footer.jsp"%>

<%@include file="MessageValidator.jsp"%>
