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


<%@include file="OptionUpdateRegister.jsp"%>

<div id = "showRegisterForm" class="formClass">

    <a onclick="ocultarDiv('#showRegisterForm')">Cerrar</a>  

    <h2>Formulario de datos personales</h2>

    <form id="registerUserForm" onsubmit="" method="post" action="<%=urlAction%>" required>          

        <label>Nombre:</label> 
        <input type="text" id ="userName" name="userName" placeholder="Escriba su nombre" required oninput="validateName(this)"/>
        <label>Apellidos:</label>
        <input type="text" id="lastName" name="lastName" placeholder="Escriba sus apellidos" required oninput="validateLastName(this)"/>
        <label>Cédula:</label>
        <input type="text" id="schedule" name="schedule" placeholder="Siga el formato #0###0###" required oninput="validateShedule(this)"/>
        <label>Teléfono:</label>
        <input type="text" id="telephone"  name="telephone" placeholder="Máximo de 8 digitos" required oninput="validateTelephone(this)"/>
        <label>Email:</label>
        <input type="text" id="email"  name="email" placeholder="hola@ejemplo.com" required oninput="validateEmail(this)"/>
        <label>Email Password:</label>
        <input type="password" id="password" name="password"  placeholder="Escriba su contraseña" required oninput="validatePassword(this)"/>
        <br><br/>
        <input type="submit" value="<%=valueSubmit%>"/>
        <input type="reset" value="Vaciar Campos"/>
        <p><%=(String) session.getAttribute("msj")%></p>
         <br><br/>
    </form>

    <%@include file="footer.jsp" %>
