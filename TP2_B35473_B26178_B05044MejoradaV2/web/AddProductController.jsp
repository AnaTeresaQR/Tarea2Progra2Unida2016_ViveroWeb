<%@page import="xmlProducts.Product"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page import="objectModel.UserModel" %>

<%
    UserModel sessionUserT = (UserModel) session.getAttribute("user");
    if (sessionUserT == null) {
        String msj = "Requiere ingresar para realizar compras. Muchas Gracias";
        response.sendRedirect("UserLogin.jsp?msj=" + msj);
    } else {
        String idP = request.getParameter("id");
        ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));

        Product newProduct = mx.getProductById(idP);
        session.setAttribute("product", newProduct);
        response.sendRedirect("AddProductToCart.jsp?id=" + idP);
    }
%>
