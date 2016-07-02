<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrincipalController"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de borrar un usuario</title>
    </head>
    <body>

        <jsp:useBean id="userModelTemp" scope="page" class="objectModel.UserModel" />
        <jsp:setProperty name="userModelTemp" property="email" param="email" />
        <jsp:setProperty name="userModelTemp" property="password" param="password" />

        <%UserModel userSession = (UserModel) session.getAttribute("user");%>

        <%
            PrincipalController controller = new PrincipalController();
            boolean result = false;
            if (userModelTemp.getEmail().equals(userSession.getEmail())) {
                if (userModelTemp.getPassword().equals(userSession.getPassword())) {
                    result = controller.deleteUser(userSession);
                } else {
                    result = false;
                }
            } else {
                result = false;
            }
            if (result) {
                session.removeAttribute("user");
                session.invalidate();
                response.sendRedirect("index.jsp");
            } else {
                String msjfail = "FALLIDA, lo sentimos por favor intente de nuevo";
                response.sendRedirect("DeleteUser.jsp?msjU=" + msjfail);
            }
        %>
    </body>
</html>
