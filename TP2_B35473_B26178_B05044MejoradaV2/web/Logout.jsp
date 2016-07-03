<%@page import="objectModel.UserModel" %>
<%
    UserModel userModelLogout = (UserModel) session.getAttribute("user");
    if (userModelLogout != null) {
        session.removeAttribute("user");
        session.invalidate();
        response.sendRedirect("index.jsp");
    }
    
%>
