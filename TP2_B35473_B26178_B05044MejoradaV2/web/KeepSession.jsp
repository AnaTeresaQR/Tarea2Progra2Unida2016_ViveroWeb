<%@page import="objectModel.UserModel" %>
<div id="account">
    <%
        String msjS = "";
        String emailS;
        session.setAttribute("msj", msjS);
        UserModel sessionUser = (UserModel) session.getAttribute("user");
        if (sessionUser == null) {
            emailS = "No has iniciado Sesión";
    %>
    <%=emailS%>&nbsp;<a href="UserLogin.jsp">(Inicia sesión)</a>
    <%
    } else {
        emailS = sessionUser.getEmail();
    %>
    <p> 
        Hola: <%=emailS%>
    </p>
    <%
        }
    %>
</div>
