<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page import="xmlProducts.CartManager"%>
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


    <%        ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
        CartManager cm = CartManager.getInstance();

        String id = request.getParameter("id");
        Product newProduct = mx.getProductById(id);

        List<Product> productsList = cm.getFromCart();
        cm.addToCart(newProduct);
        for (int i = 0; i < productsList.size(); i++) {
            int amount = 1;

            Product product = productsList.get(i);

    %>

    <div class="products">
        <p id="prueba">Prueba: <%=productsList.contains(newProduct)%></p>
        <p id="name">Nombre del producto: <%=product.getName()%></p>
        <p id="price"> Precio: <%=product.getPrice()%></p>
        <p>Cantidad:</p> 
        <input type="number" id ="amount" name="amount" placeholder=<%=amount + ""%>  min="1" required/>
        <p id="subTotal">Subtotal: </p>
    </div>


    <%
        }
    %> 
    <p id="subTotal">Subtotal: </p>
    <p id="subTotal">Total: </p>
</div>


<%@include file="footer.jsp"%>