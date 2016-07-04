<%@page import="xmlProducts.Product"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<jsp:useBean id="product" scope="session" class="xmlProducts.Product" />

<%

    ProductsXmlManager xm = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
    try {
        String idProduct = request.getParameter("selectProduct");
        String option = request.getParameter("action");
        if (option.equals("")) {
            String msj = " Debe seleccionar un producto";
            response.sendRedirect("ListProducts.jsp?msj= " + msj + "&optionselect=2");

        } else {
            if (option.equals("Eliminar Producto")) {
                xm.deleteProductById(idProduct);

                response.sendRedirect("ProductsAdministrator.jsp");
            }
            if (option.equals("Actualizar Producto")) {
                session.setAttribute("idProduct", idProduct);
                response.sendRedirect("UpdateProduct.jsp");
            }
            if (option.equals("Mostrar Producto")) {
                Product p = xm.getProductById(idProduct);
%>

<jsp:setProperty name="product" property="name" value="<%=p.getName()%>" />
<jsp:setProperty name="product" property="productId" value="<%=p.getProductId()%>" />
<jsp:setProperty name="product" property="category" value="<%=p.getCategory()%>" />
<jsp:setProperty name="product" property="shortDescription" value="<%=p.getShortDescription()%>" />
<jsp:setProperty name="product" property="longDescription" value="<%=p.getLongDescription()%>" />
<jsp:setProperty name="product" property="price" value="<%=p.getPrice()%>" />
<jsp:setProperty name="product" property="productSold" value="<%=p.getProductSold()%>" />
<jsp:setProperty name="product" property="productForSell" value="<%=p.getProductForSell()%>" />
<jsp:setProperty name="product" property="urlPicture1" value="<%=p.getUrlPicture1()%>" />
<jsp:setProperty name="product" property="urlPicture2" value="<%=p.getUrlPicture2()%>" />
<jsp:setProperty name="product" property="urlPicture3" value="<%=p.getUrlPicture3()%>" />

<%
                response.sendRedirect("ShowProductInformation.jsp");

            }
        }
    } catch (Exception e) {
        String msj = " Debe seleccionar un producto";
        response.sendRedirect("ListProducts.jsp?msj= " + msj + "&optionselect=2");
    }
%>
