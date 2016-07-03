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



<div id = "showConsultForm" class="formClass">

    <%@include file="DivDataContactUs.jsp" %>

    <%-- <a onclick="ocultarDiv('#showConsultForm')">Cerrar</a>  --%>
    <h1>Consultas</h1>
    <form id="saveContultForm" method="post"  
          onsubmit="return confirmAction('showConsultForm', 'Será contactado próximamente ¿Desea continuar?')"  
          action="ContactUsController.jsp" required>          

        <label>Nombre Completo:</label> 
        <input type="text" id ="completeName" name="completeName" 
               placeholder="Escriba su nombre completo" 
               required oninput="validateName(this)"/>
        </br>

        <label>Email:</label>
        <input type="text" id="email"  name="email" 
               placeholder="hola@ejemplo.com" required oninput="validateEmail(this)"/>
        <label>Message:</label></br>

        <textarea id ="message" name="message" 
                  placeholder="Escriba su consulta"  rows="6" cols="50" required></textarea>
        <br><br/>

        <input type="submit" value="Enviar"/>
        <input type="reset" value="Vaciar Campos"/>

        <%            String msjConsult = (String) request.getParameter("result");
            if (msjConsult == null) {
                msjConsult = "";
            }
        %>
        <p><%=msjConsult%></p>

    </form>

</div>

<%@include file="footer.jsp"%>

