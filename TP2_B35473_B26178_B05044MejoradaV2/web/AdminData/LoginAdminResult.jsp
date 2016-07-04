<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.AdminController"%>
<%@page import="objectModel.Administrator" %>
<!DOCTYPE html>
<jsp:useBean id="administrator" scope="session" class="objectModel.Administrator" />

<jsp:setProperty name="administrator" property="email" param="email" />
<jsp:setProperty name="administrator" property="password" param="password"/>


<%
    AdminController controller = new AdminController();
    try {
        administrator = controller.loginAdmin(administrator);
        if (administrator == null) {
            String msj = "Ingrese correctamente los datos de administrador";
            response.sendRedirect("AdminLogin.jsp?msj=" + msj + "&optionselect=2");
        } else {
            session.setAttribute("admin", administrator);
%>

<jsp:setProperty name="administrator" property="idAdmin" value="<%=administrator.getIdAdmin()%>"/>

<%
            response.sendRedirect("ProductsAdministrator.jsp");
        }
    } catch (Exception e) {
        String msj = "Ingrese correctamente los datos de administrador";
        response.sendRedirect("AdminLogin.jsp?msj=" + msj + "&optionselect=2");
    }
%>

