<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrincipalController"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>

<jsp:useBean id="userModel" scope="session" class="objectModel.UserModel" />

<jsp:setProperty name="userModel" property="email" param="email" />
<jsp:setProperty name="userModel" property="password" param="password" />

<%
    PrincipalController controller = new PrincipalController();
    UserModel newUserModel = controller.loginUser(userModel);
     System.out.print("USUARIO LOGUEADO:" + newUserModel);
    session.setAttribute("user", newUserModel);
%>

<jsp:setProperty name="userModel" property="id" value="<%=newUserModel.getId()%>"/>
<p>
    El usuario ingresado 
    <jsp:getProperty name="userModel" property="email"/>
    Bienvenido su id es:
    <jsp:getProperty name="userModel" property="id"/>

    <a href="index.jsp">Inicio</a>
</p>      

