<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="xmlProducts.Product"%>
<%@page import="buy.CartManager"%>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page import="objectModel.UserModel" %>

<%

    UserModel sessionUserT = (UserModel) session.getAttribute("user");
    if (sessionUserT == null) {
        response.sendRedirect("UserLogin.jsp");
    } else {
        String idP = request.getParameter("id");
        int amount = Integer.parseInt(request.getParameter("amount"));

        ProductsXmlManager mx = new ProductsXmlManager(getServletContext().getRealPath("xml/products.xml"));
        CartManager cm = CartManager.getInstance();
        Product newProduct = mx.getProductById(idP);

        if (amount <= newProduct.getProductForSell()) {
            boolean add = cm.addToCart(amount, newProduct);
            response.sendRedirect("ShoppingCart.jsp");
        } else {
            String msj = "No se encuentra disponible la cantidad de productos seleccionada"
                    + "\nCantidad disponible: " + newProduct.getProductForSell();
            response.sendRedirect("AddProductToCart.jsp?msj=" + msj + "&optionselect=2");
        }

    }
%>




