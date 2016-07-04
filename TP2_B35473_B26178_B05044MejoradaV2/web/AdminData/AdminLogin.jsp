<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="headerAdmin.jsp" %>

<div id = "showLoginForm" class="formClass">
    <h2>Ingresar - Administrador</h2>

    <form onsubmit="" method="post" action="LoginAdminResult.jsp" required>                         
        <label>Email:</label>
        <input type="text" name="email" placeholder="hola@ejemplo.com" required oninput="validateEmail(this)"/>
        <label>Email Password:</label>
        <input type="password" name="password"  placeholder="Escriba su contraseña" required oninput="validatePassword(this)"/>
        <br><br/>
        <input type="submit" value="Ingresar"/>
        <input type="reset" value="Vaciar Campos"/>
        <br><br/>
    </form>

</div>

<%@include file="footerAdmin.jsp" %>

<%@include file="../MessageValidator.jsp" %>