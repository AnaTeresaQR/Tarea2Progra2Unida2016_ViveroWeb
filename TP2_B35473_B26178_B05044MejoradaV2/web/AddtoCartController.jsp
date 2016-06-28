<%@page import="objectModel.UserModel" %>
<%

    UserModel sessionUserT = (UserModel) session.getAttribute("user");
    if (sessionUserT == null) {
        response.sendRedirect("UserLogin.jsp");
    } else {
        String idP = request.getParameter("id");
        response.sendRedirect("ShoppingCart.jsp?id=" + idP);
    }

%>
