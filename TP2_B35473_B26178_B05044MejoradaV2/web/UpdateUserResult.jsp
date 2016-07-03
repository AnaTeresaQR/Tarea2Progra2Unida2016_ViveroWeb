<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrincipalController"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>
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
        UserModel newUserModel = controller.loginUser(userModelTemp);
        session.setAttribute("user", userModelTemp);
        String msj = "EXITOSO, sus datos se han modificado";
        response.sendRedirect("index.jsp?msj=" + msj + "&optionselect=2");
    } else {
        String msj = "FALLIDO, lo sentimos por favor intente de nuevo";
        response.sendRedirect("RegisterUpdateUser.jsp?typeValue=2" + "&msj=" + msj + "&optionselect=1");
    }
%>

