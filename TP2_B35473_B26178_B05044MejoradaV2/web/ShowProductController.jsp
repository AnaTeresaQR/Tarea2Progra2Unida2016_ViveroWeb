<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>

<jsp:useBean id="productSession" scope="session"  class="xmlProducts.Product"/>

<%
    String id = request.getParameter("id");
    ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));

    Product p = mx.getProductById(id);
    session.setAttribute("productSession", p);
    
    response.sendRedirect("ShowProduct.jsp");
%>




