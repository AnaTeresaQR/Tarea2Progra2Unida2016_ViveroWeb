
<%@page import="objectModel.Administrator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String urlA = "";
    String emailS;
    try {
        Administrator adminSession = (Administrator) session.getAttribute("admin");
        if (adminSession == null) {
            urlA = "AdminLogin.jsp";
            emailS = "No has iniciado Sesión";
%>
<div id="account">

    <p><%=emailS%></P>
</div>
<%
} else {
    urlA = "ProductsAdministrator.jsp";
    emailS = adminSession.getEmail();
%>
<div id="account">

    <p> Hola: <%=emailS%></P>
</div>
<%
        }
    } catch (Exception e) {
        urlA = "AdminLogin.jsp";
    }
%>

