<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrincipalController"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Actualizar</title>
    </head>
    <body>

        <jsp:useBean id="userModelTemp" scope="page" class="objectModel.UserModel" />

        <jsp:setProperty name="userModelTemp" property="userName" param="userName" />
        <jsp:setProperty name="userModelTemp" property="lastName" param="lastName" />
        <jsp:setProperty name="userModelTemp" property="schedule" param="schedule" />
        <jsp:setProperty name="userModelTemp" property="telephone" param="telephone" />
        <jsp:setProperty name="userModelTemp" property="email" param="email" />
        <jsp:setProperty name="userModelTemp" property="password" param="password" />

        <%

            UserModel userSession = (UserModel) session.getAttribute("user");%>

        <%
            userModelTemp.setId(userSession.getId());
            PrincipalController controller = new PrincipalController();
            boolean result = controller.updateUser(userModelTemp);
            String resultUpdate = "";
            if (result) {
                resultUpdate = " EXITOSO ";
                UserModel newUserModel = controller.loginUser(userModelTemp);
                session.setAttribute("user", newUserModel);
            } else {
                resultUpdate = " FALLIDO, lo sentimos por favor intente de nuevo";
            }
        %>

        <p>
            El resultado de actualizar sus datos fue <%=resultUpdate%>
            y sus nuevos datos son <%=userSession.getEmail() + "\n" + userSession.getUserName()%>
        </p>

        <a href="../index.jsp">Inicio</a>

    </body>
</html>
