<%@include file="header.jsp" %>       
<div id="menus">
    
    <%@include file="informationMenu.jsp"%>
    <%@include file="CategoryMenu.jsp"%>
</div>
<div id = "showConsultForm" class="formClass">

    <a onclick="ocultarDiv('#showConsultForm')">Cerrar</a>  

    <h1>Formulario de Consultas</h1>

    <form id="saveContultForm" method="post" action="ContactUsController.jsp" required>          

        <label>Nombre Completo:</label> 
        <input type="text" id ="completeName" name="completeName" placeholder="Escriba su nombre completo" required/>
        <label>Email:</label>
        <input type="text" id="email"  name="email" placeholder="hola@ejemplo.com" required/>
        <label>Message:</label>
        <textarea id ="message" name="message" placeholder="Escriba su consulta"  rows="10" cols="40" required></textarea>
        <br><br/>
        <input type="submit" value="Enviar"/>
        <input type="reset" value="Vaciar Campos"/>

    </form>

</div>
<%@include file="footer.jsp"%>

