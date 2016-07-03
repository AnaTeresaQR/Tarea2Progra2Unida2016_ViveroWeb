<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrincipalController"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>

<jsp:useBean id="userModelLoginTemp" scope="page" class="objectModel.UserModel" />
<jsp:useBean id="userModel" scope="session" class="objectModel.UserModel" />

<jsp:setProperty name="userModelLoginTemp" property="email" param="email" />
<jsp:setProperty name="userModelLoginTemp" property="password" param="password" />

<%
    PrincipalController controller = new PrincipalController();
    UserModel newUserModel = controller.loginUser(userModelLoginTemp);
    if (newUserModel == null) {
        String msj = "FALLIDO, lo sentimos por favor intente de nuevo";
        response.sendRedirect("UserLogin.jsp?msj=" + msj);
    }
    if (newUserModel != null) {
        session.setAttribute("user", newUserModel);
        response.sendRedirect("index.jsp");
    }
%>

<%--<jsp:setProperty name="userModel" property="id" value="<%=newUserModel.getId()%>"/> 
<p>
    El usuario ingresado 
    <jsp:getProperty name="userModel" property="email"/>
    Bienvenido su id es:
    <jsp:getProperty name="userModel" property="id"/>

    <a href="index.jsp">Inicio</a> 
</p>      --%>

