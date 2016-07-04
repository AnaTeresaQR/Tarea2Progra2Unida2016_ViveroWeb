<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@include file="header.jsp" %>    

<div id="menus">
    <%@include file="informationMenu.jsp"%>

    <%@include file="CategoryMenu.jsp"%>
</div>

<div   id="userMenu" >
    <%@include file="SessionMenu.jsp" %>
</div>

<div id="global">

    <div id="top10">
        <%            String category = request.getParameter("category");
            ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
            List<Product> productsList = mx.getProductsByCategory(category);
            for (int i = 0; i < productsList.size(); i++) {
                Product product = productsList.get(i);
        %>

        <div class="products">

            <a href="ShowProductController.jsp?id=<%=product.getProductId()%>"><%=product.getName()%></a>
            <p id="shortDescription"> Descripcion: <%=product.getShortDescription()%> </p>        
            <p id="price"> Precio: <%=product.getPrice()%> </p>
            <a href="ShowProductController.jsp?id=<%=product.getProductId()%>"><img src="<%= product.getUrlPicture1()%>" width="250" height="180" alt="top"></a>
            <br>
            <a href="ShowProductController.jsp?id=<%=product.getProductId()%>">Ver producto</a>
        </div>
        <%
            }
        %> 
    </div>
</div>
<%@include file="footer.jsp"%>