<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <link href="../cssPrincipalViews/FormCss.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="Registerjs/javaScriptJQueryMethod.js"></script>
        <script type="text/javascript" src="Registerjs/ValidateObjAttributes.js"></script>
        <title>Login Administrador</title>
    </head>
    <body>
        <div id = "showLoginForm" class="formClass">

            <a onclick="ocultarDiv('#showLoginForm')">Cerrar</a>  

            <h2>Formulario de Ingresar Admin</h2>

            <form onsubmit="" method="post" action="LoginAdminResult.jsp" required>                         
                <label>Email:</label>
                <input type="text" name="email" placeholder="hola@ejemplo.com" required oninput="validateEmail(this)"/>
                <label>Email Password:</label>
                <input type="password" name="password"  placeholder="Escriba su contraseña" required oninput="validatePassword(this)"/>
                <br><br/>
                <input type="submit" value="Ingresar"/>
                <input type="reset" value="Vaciar Campos"/>
            </form>

        </div>
    </body>
</html>
