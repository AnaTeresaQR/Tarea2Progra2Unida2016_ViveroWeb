<%@page import="xmlProducts.ProductsXmlManager"%>
<jsp:useBean id="productsList" scope="session" type="xmlProducts.ProductsXmlManager"/> 

<%
    String productName = (String) request.getParameter("productName");
    //String id = (String) session.getAttribute("idProduct");
    String id = "5";
    String category = (String) request.getParameter("selectCategory");
    String shortDescription = (String) request.getParameter("shortDescription");
    String longDescription = (String) request.getParameter("longDescription");
    String productPrice = (String) request.getParameter("productPrice");
    String productsForSell = (String) request.getParameter("productsForSell");
    String image1 = (String) request.getParameter("image1");
    String image2 = (String) request.getParameter("image2");
    String image3 = (String) request.getParameter("image3");

    ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
    mx.updatePlantById(id, productName, category, shortDescription, longDescription, productsForSell, productPrice, image1, image2, image3);
    response.sendRedirect("ProductsAdministrator.jsp");
%>
