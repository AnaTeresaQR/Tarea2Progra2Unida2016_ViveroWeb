<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="buy.CartManager"%>
<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.ProductsXmlManager"%>

<jsp:useBean id="productSession" scope="session"  class="xmlProducts.Product"/>

<%
    String Uvalue = (String) request.getParameter("updateValue").trim();
    System.out.print("valor UVALUE: " + Uvalue);
    String idp = request.getParameter("id");
    
    String newValue = request.getParameter("newValue");
    
    int amount = Integer.parseInt(newValue);
    ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
    CartManager cm = CartManager.getInstance();
    Product newProduct = mx.getProductById(idp);
    Product p = mx.getProductById(idp);
    if ("Actualizar".equals(Uvalue)) {
        cm.updateProduct(amount, p);
    } else if ("Eliminar".equals(Uvalue)) {
        cm.removeProduct(p);
    }

    response.sendRedirect("ShoppingCart.jsp");

%>
