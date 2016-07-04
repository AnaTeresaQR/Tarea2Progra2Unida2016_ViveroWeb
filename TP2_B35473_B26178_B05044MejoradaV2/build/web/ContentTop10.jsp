<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page import="xmlProducts.ProductsListManager"%>

<div id="global">

    <div id="top10">
        <%
            ProductsListManager ml = new ProductsListManager();
            List<Product> plantsList = ml.getTopProducts(getServletContext().getRealPath("xml/products.xml"));
            for (int i = 0; i < 10; i++) {
                Product product = plantsList.get(i);
        %>
        <div class="products">
            <a href="ShowProductController.jsp?id=<%=product.getProductId()%>"><%=product.getName()%></a>
            <p id="shortDescription"> Descripcion= <%=product.getShortDescription()%> </p>        
            <p id="price"> Precio= <%=product.getPrice()%> </p>
            <a href="ShowProductController.jsp?id=<%=product.getProductId()%>"><img src="<%= product.getUrlPicture1()%>" width="250" height="180" alt="top"></a>
            <br>
            <a href="ShowProductController.jsp?id=<%=product.getProductId()%>">Ver producto</a>
        </div>
        <%
            }
        %> 
    </div>
</div>
