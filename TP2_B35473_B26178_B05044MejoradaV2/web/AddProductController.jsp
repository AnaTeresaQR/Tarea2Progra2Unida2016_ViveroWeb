<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="xmlProducts.Product"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page import="objectModel.UserModel" %>
<%request.setCharacterEncoding("utf-8");%>
<%
    UserModel sessionUserT = (UserModel) session.getAttribute("user");
    if (sessionUserT == null) {
        String msj = "Requiere ingresar para realizar compras. Muchas Gracias";
        response.sendRedirect("UserLogin.jsp?msj=" + msj + "&optionselect=1");
    } else {
        String idP = request.getParameter("id");
        ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));

        Product newProduct = mx.getProductById(idP);
        session.setAttribute("product", newProduct);
        response.sendRedirect("AddProductToCart.jsp?id=" + idP);
    }
%>
