
<%@page import="objectModel.Bill_Model"%>
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

<jsp:useBean id="billSession" scope="session" type="objectModel.Bill_Model" />

<div  class="formClass">
    <%
    String msj = "Compra realizada exitosamente";
    %>
    <form method="post" action="ShowBill.jsp?msj=<%=msj + "&optionselect=2"%> " required>

        <p>
            Productos:<br><%=billSession.getProducts()%>
            <br>
            Subtotal General:<%=billSession.getSubtotal()%>
            <br>
            Total General:<%=billSession.getTotal()%>
            <br>
            Dirección de Envío:<%=billSession.getAddressUser()%>
            <br>
            Tarjeta:<%=billSession.getNumCard()%>
            <br>
        </p>

        <input type="submit" value="Finalizar compra" />
        <br>
    </form>
</div>

<%@include file="footer.jsp"%>
