<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="objectModel.UserModel" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <link href="../cssPrincipalViews/CssPrincipal.css" rel="stylesheet" type="text/css"/>
        <link href="../cssPrincipalViews/FormCss.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="Registerjs/javaScriptJQueryMethod.js"></script>
        <script type="text/javascript" src="Registerjs/ValidateObjAttributes.js"></script>
        <title>Registro de Usuario</title>
    </head>
    <body>

        <%@include file="../General/informationMenu.jsp"%>

        <%@include file="../General/userMenu.jsp"%>

        <%@include file="OptionUpdateRegister.jsp"%>

        <div id = "showRegisterForm" class="formClass">

            <a onclick="ocultarDiv('#showRegisterForm')">Cerrar</a>  

            <h2>Formulario de datos personales</h2>

            <form id="registerUserForm" onsubmit=" return  confirmAction('#registerUserForm')" method="post" action="<%=urlAction%>" required>          

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

            </form>

            <p><%=(String) session.getAttribute("msj")%></p>

        </div>
    </body>
</html>
