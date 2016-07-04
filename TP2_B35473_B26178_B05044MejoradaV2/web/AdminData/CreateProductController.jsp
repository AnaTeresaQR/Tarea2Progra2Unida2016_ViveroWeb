
<%@page import="xmlProducts.ProductsXmlManager"%>

<%
    String productName = (String) request.getParameter("productName");
    String category = (String) request.getParameter("selectCategory");
    String shortDescription = (String) request.getParameter("shortDescription");
    String longDescription = (String) request.getParameter("longDescription");
    String productPrice = (String) request.getParameter("productPrice");
    String productsForSell = (String) request.getParameter("productsForSell");
    String image1 = (String) request.getParameter("image1");
    String image2 = (String) request.getParameter("image2");
    String image3 = (String) request.getParameter("image3");
    if (image3 == null) {
        image3 = "";
    }

    ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
    String idNewProduct = mx.getAllProducts().size() + 1 + "";

    mx.addNewProduct(idNewProduct, image1, image2, image3, productName, shortDescription, longDescription, productPrice, category, productsForSell);

    response.sendRedirect("ProductsAdministrator.jsp");

%>

