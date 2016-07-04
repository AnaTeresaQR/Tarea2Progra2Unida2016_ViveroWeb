
<%@page import="java.util.List"%>
<%@page import="xmlProducts.Product"%>
<%@page import="xmlProducts.ProductsXmlManager"%>

<jsp:useBean id="productsList" scope="session" class="xmlProducts.ProductsXmlManager"/> 

<%
    ProductsXmlManager xm = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
    String sizelist = xm.getAllProducts().size() + "";
    List<Product> fruitTreeList = xm.getProductsByCategory("Arbol frutal");
    List<Product> woodTreeList = xm.getProductsByCategory("Arbol Maderable");
    List<Product> gardenToolList = xm.getProductsByCategory("Herramienta de jardineria");
    List<Product> cookPlantList = xm.getProductsByCategory("Planta culinaria");
    List<Product> medicinePlantList = xm.getProductsByCategory("Plantas Medicinales");
    List<Product> ornamentalPlantList = xm.getProductsByCategory("Plantas Ornamentales");
    List<Product> organicProductList = xm.getProductsByCategory("Producto organico");
    List<Product> gardenServiceList = xm.getProductsByCategory("Servicio de jardineria");

    session.setAttribute("sizeList", sizelist);
    session.setAttribute("fruitTreeList", fruitTreeList);
    session.setAttribute("woodTreeList", woodTreeList);
    session.setAttribute("gardenToolList", gardenToolList);
    session.setAttribute("cookPlantList", cookPlantList);
    session.setAttribute("medicinePlantList", medicinePlantList);
    session.setAttribute("ornamentalPlantList", ornamentalPlantList);
    session.setAttribute("organicProductList", organicProductList);
    session.setAttribute("gardenServiceList", gardenServiceList);

    response.sendRedirect("ListProducts.jsp");

%>
