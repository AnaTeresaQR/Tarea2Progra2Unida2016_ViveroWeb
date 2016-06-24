<%@page import="objectModel.UserModel" %>
<div id="account">
    <%
        String msj = "";
        String email;
        session.setAttribute("msj", msj);
        UserModel sessionUser = (UserModel) session.getAttribute("user");
        if (sessionUser == null) {
            email = "No has iniciado Sesión";
    %>
    <%=email%>&nbsp;<a href="UserLogin.jsp">(Inicia sesión)</a>
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
