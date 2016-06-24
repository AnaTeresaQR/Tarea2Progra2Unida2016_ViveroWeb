<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.AdminController"%>
<%@page import="objectModel.Administrator" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Ingresar como Admin</title>
    </head>
    <body>

        <jsp:useBean id="administrator" scope="session" class="objectModel.Administrator" />

        <jsp:setProperty name="administrator" property="email" param="email" />
        <jsp:setProperty name="administrator" property="password" param="password"/>


        <%
            AdminController controller = new AdminController();
            administrator = controller.loginAdmin(administrator);

            session.setAttribute("admin", administrator);
        %>

        <jsp:setProperty name="administrator" property="idAdmin" value="<%=administrator.getIdAdmin()%>"/>
        <p>
            El admin ingresado 
            <jsp:getProperty name="administrator" property="email"/>
            Bienvenido su id es:
            <jsp:getProperty name="administrator" property="idAdmin"/>
        </p>       

        <a href="../index.jsp">Inicio</a>
    </body>
</html>
