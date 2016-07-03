<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>

<div id="menus">
    <%@include file="informationMenu.jsp"%>

    <%@include file="CategoryMenu.jsp"%>
</div>

<div   id="userMenu" >
    <%@include file="SessionMenu.jsp" %>
</div>

<div  id = "showDeleteUserForm" class="formClass">

    <a onclick="ocultarDiv('#showDeleteUserForm')">Cerrar</a>  

    <h2>Ingrese sus datos para eliminar su cuenta</h2>

    <form  id="deleteUserForm" 
           onsubmit="return confirmAction('deleteUserForm', '¿Seguro desea borrar su cuenta?')" 
           method="post" action="DeleteUserResult.jsp" required>                         
        <label>Email:</label>
        <input type="text" name="email" placeholder="hola@ejemplo.com" required oninput="validateEmail(this)"/>
        <label>Email Password:</label>
        <input type="password" name="password"  placeholder="Escriba su contraseña" required oninput="validatePassword(this)"/>
        <br><br/>
        <input type="submit" value="Borrar Cuenta"/>
        <input type="reset" value="Vaciar Campos"/>
        <br><br/>
        <%@include file="MessageValidator.jsp" %>
    </form> 
</div>
<%@include file="footer.jsp" %>
