<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrincipalController"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>

<jsp:useBean id="userModel" scope="page" class="objectModel.UserModel" />

<jsp:setProperty name="userModel" property="userName" param="userName" />
<jsp:setProperty name="userModel" property="lastName" param="lastName" />
<jsp:setProperty name="userModel" property="schedule" param="schedule" />
<jsp:setProperty name="userModel" property="telephone" param="telephone" />
<jsp:setProperty name="userModel" property="email" param="email" />
<jsp:setProperty name="userModel" property="password" param="password" />

<%
    PrincipalController controller = new PrincipalController();
    if (!controller.existEmail(userModel.getEmail())
            && !controller.existSchedule(userModel.getSchedule())) {

        controller.createUserModel(userModel);
        response.sendRedirect("UserLogin.jsp");
    } else {
        String msj = "No se pudo registrar, Intente de nuevo";
        response.sendRedirect("RegisterUpdateUser.jsp?typeValue=1" + "&msj=" + msj);
    }
%>

