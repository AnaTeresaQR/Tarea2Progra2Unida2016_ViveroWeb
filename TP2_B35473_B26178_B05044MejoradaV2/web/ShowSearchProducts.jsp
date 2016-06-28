<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@include file="header.jsp" %>    
<div id="menus">
    <%@include file="informationMenu.jsp"%>
    <%@include file="CategoryMenu.jsp"%>
</div>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="global">

    <div id="listP">
        <%
            List<Product> searchP = (List<Product>) session.getAttribute("searchProducts");

            for (int i = 0; i < searchP.size(); i++) {
                Product productSearch = searchP.get(i);
        %>
        <p><%=  productSearch.getName() %> </p>

        <div class="products">

            <a href="ShowProductController.jsp?id=<%=productSearch.getProductId()%>"><%=productSearch.getName()%></a>
            <p id="shortDescription"> Descripcion: <%= productSearch.getShortDescription()%> </p>        
            <p id="price"> Precio: <%=productSearch.getPrice()%> </p>
            <a href="ShowProductController.jsp?id=<%=productSearch.getProductId()%>"><img src="<%= productSearch.getUrlPicture1()%>" width="250" height="180" alt="top"></a>
            <br>
            <a href="ShowProductController.jsp?id=<%=productSearch.getProductId()%>">Ver producto</a>
        </div>


        <%
            }
        %> 
    </div>
</div>

<%@include file="footer.jsp"%>
