<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.PrincipalController"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Ingresar como Usuario</title>
    </head>
    <body>

        <jsp:useBean id="userModel" scope="session" class="objectModel.UserModel" />

        <jsp:setProperty name="userModel" property="email" param="email" />
        <jsp:setProperty name="userModel" property="password" param="password" />

        <%
            PrincipalController controller = new PrincipalController();
            UserModel newUserModel = controller.loginUser(userModel);

            session.setAttribute("user", newUserModel);
        %>

        <jsp:setProperty name="userModel" property="id" value="<%=newUserModel.getId()%>"/>
        <p>
            El usuario ingresado 
            <jsp:getProperty name="userModel" property="email"/>
            Bienvenido su id es:
            <jsp:getProperty name="userModel" property="id"/>
            
            <a href="../index.jsp">Inicio</a>
        </p>      
    </body>
</html>
