
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="header.jsp" %>
<script src="js/WebServicejs.js" type="text/javascript"></script>
<script src="js/EncriptNumCard.js" type="text/javascript"></script>

<div id="menus">
    <%@include file="informationMenu.jsp"%>

    <%@include file="CategoryMenu.jsp"%>
</div>

<div   id="userMenu" >
    <%@include file="SessionMenu.jsp" %>
</div>

<div  class="formClass">
    <form method="post" action="PurchasingProcessController.jsp" required>
        <br>
        <select name="selectTypeCard" size="1">
            <option name="debit" value="Debito">Débito</option>
            <option name="credit" value="Credito">Crédito</option>         
        </select>
        <br><br>
        <select name="selectEntityCard" size="1">
            <option name="visa" value="visa">VISA</option>
            <option name="mastercard" value="mastercard">Mastercard</option>   

        </select>
        <br>
        <label for="province">Provincia</label>
        <select id="province"  name="province" size="1" onchange="loadCanton();">
            <option name="selection" value="selection">Seleccione</option>
        </select>
        <br>
        <label for="canton">Cantón</label>
        <select id="canton" name="canton" size="1" onchange="loadDistrict();">
            <option name="selection" value="selection">Seleccione</option>
        </select>
        <br>
        <label for="district">Distrito</label>
        <select id="district" name="district" size="1" onchange="setDistrict();">
            <option name="selection" value="selection">Seleccione</option>
        </select>
        <br><br>
        <input type="text" id ="location" name="location" placeholder="Datos extras de localidad" required/>
        <br>
        <label>Número de Tarjeta</label>
        <br>
        <input type="text" id ="numcard" name="numcard" placeholder="Favor ingresar los 12 dígitos" required/>
        <br>
        <label>Fecha expiración de tarjeta:</label>
        <br>
        <input type="text" id ="expDate" name="expDate" placeholder="ejemplo 06/23" required/>
        <p  id="print" name="print" ></p>
        <input type="submit" value="Confirmar compra" onclick="convertNumCard()" />
        <input type="reset" value="Vaciar Campos"/>
        <br><br>
    </form>
</div>

<%@include file="MessageValidator.jsp"%>

