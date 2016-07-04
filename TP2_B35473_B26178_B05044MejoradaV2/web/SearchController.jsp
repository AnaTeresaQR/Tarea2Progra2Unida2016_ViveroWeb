<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="xmlProducts.ProductsListManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.Product"%>
<%@page import="xmlProducts.ProductsXmlManager"%>

<%
    String forSearch = request.getParameter("search");
    ProductsListManager ml = new ProductsListManager();
    List<Product> listSearch = ml.getSearch(getServletContext().getRealPath("xml/products.xml"), forSearch);

    if (listSearch.size() != 0) {
        session.setAttribute("searchProducts", listSearch);
        response.sendRedirect("ShowSearchProducts.jsp");
    } else {
        String msj = "No hay producto que concuerde, intente de nuevo";
        response.sendRedirect("index.jsp?msj=" + msj + "&optionselect=2");
    }
%>
<p> Param:  <%=forSearch%> </p>