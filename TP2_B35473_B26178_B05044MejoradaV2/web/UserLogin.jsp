<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<div id = "showLoginUserForm" class="formClass">

    <a onclick="ocultarDiv('#showLoginUserForm')">Cerrar</a>  

    <h2>Formulario de Ingresar Usuario</h2>

    <form onsubmit="" method="post" action="LoginUserResult.jsp" required>                         
        <label>Email:</label>
        <input type="text" name="email" placeholder="hola@ejemplo.com" required oninput="validateEmail(this)"/>
        <label>Email Password:</label>
        <input type="password" name="password"  placeholder="Escriba su contraseña" required oninput="validatePassword(this)"/>
        <br><br/>
        <input  type="submit" value="Ingresar"/>
        <input type="reset" value="Vaciar Campos"/>
        <br><br/>
    </form>

</div>
<%@include file="footer.jsp" %>
