
<%@page import="objectModel.Administrator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String emailSessionAdmin = "";
    try {
        Administrator adminSession = (Administrator) session.getAttribute("admin");
        if (adminSession == null) {
            emailSessionAdmin = "No has iniciado Sesión";
%>
<div id="account">

    <p><%=emailSessionAdmin%></P>
</div>
<%
} else {
    emailSessionAdmin = adminSession.getEmail();
%>
<div id="account">

    <p> Hola: <%=emailSessionAdmin%></P>
</div>
<%
        }
    } catch (Exception e) {
    }
%>

