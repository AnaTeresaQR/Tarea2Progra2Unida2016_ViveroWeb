<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page import="buy.CartManager"%>
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


    <%        CartManager cm = CartManager.getInstance();
        List<Product> productsList = cm.getProductsCart();
        for (int i = 0; i < productsList.size(); i++) {
            int quantity = cm.getQuantityCart().get(i);
            double subTotal = cm.getSubTotalProduct(i);
            Product product = productsList.get(i);
    %>

    <div class="products">
        <form action="UpdateProductController.jsp" >
            <p id="name">Nombre del producto: <%=product.getName()%></p>
            <p id="price"> Precio: <%=product.getPrice()%></p>
            <p>Cantidad: </p> 
            <input type="number" name="newValue" value="<%=quantity%>" min="1" max="<%=product.getProductForSell()%>"/>
            <input type="hidden" name="id" value="<%=product.getProductId()%>" min="0"/>

            <p id="subTotal">Subtotal:<%= subTotal%> </p>

            <input name="updateValue" type="submit" value="Actualizar"/>     
            <input name="updateValue" type="submit" value="Eliminar"/>     
        </form>

    </div>


    <%
        }

        if (!productsList.isEmpty()) {
    %> 
    <p id="subTotal">Subtotal: <%=cm.getSubTotal()%> </p>
    <p id="sendCost">Costo de envío: <%=cm.getSendCost()%> </p>
    <p id="subTotal">Total: <%=cm.getTotal()%></p>

    <a href="index.jsp"> Seguir Comprando</a>
    </br>
    </br>
    <a href="PurchasingProcess.jsp">Procesar compra</a>


    <%
    } else {
    %>
    <h2>Su carrito de compra está vacío consulte nuestras categorías</h2>
    <h3>¡¡Buen día!!</h3>
    <%
        }
    %>

</div>
<%@include file="footer.jsp"%>