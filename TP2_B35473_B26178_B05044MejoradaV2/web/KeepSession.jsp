<%@page import="objectModel.UserModel" %>
<div id="account">
    <%
        String msj = "";
        String email;
        session.setAttribute("msj", msj);
        UserModel sessionUser = (UserModel) session.getAttribute("user");
        if (sessionUser == null) {
            email = "No has iniciado Sesi�n";
    %>
    <%=email%>&nbsp;<a href="UserLogin.jsp">(Inicia sesi�n)</a>
    <%
    } else {
        email = sessionUser.getEmail();
    %>
    <p> 
        Hola: <%=email%>
    </p>
    <%
        }
    %>
</div>
