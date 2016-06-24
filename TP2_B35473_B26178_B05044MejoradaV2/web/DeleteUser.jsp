<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <link href="../cssPrincipalViews/CssPrincipal.css" rel="stylesheet" type="text/css"/>
        <link href="../cssPrincipalViews/FormCss.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="../Registerjs/javaScriptJQueryMethod.js"></script>
        <script type="text/javascript" src="../Registerjs/ValidateObjAttributes.js"></script>
        <script type="text/javascript" src="../Registerjs/ConfirmActionForm.js"></script>
        <title>DeleteUsuario</title>
    </head>
    <body>
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
            </form>

        </div>
    </body>
</html>
