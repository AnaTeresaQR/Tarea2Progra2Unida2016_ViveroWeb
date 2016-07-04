
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
    <form method="post" action="" required>

        <p>
            Productos:<br><%=billSession.getProducts()%>
            Subtotal General:<%=billSession.getSubtotal()%>
            Total General:<%=billSession.getTotal()%>
            Dirección de Envío:<%=billSession.getAddressUser()%>
            Tarjeta:<%=billSession.getNumCard()%>
        </p>

        <input type="submit" value="Finalizar compra" />
    </form>
</div>
