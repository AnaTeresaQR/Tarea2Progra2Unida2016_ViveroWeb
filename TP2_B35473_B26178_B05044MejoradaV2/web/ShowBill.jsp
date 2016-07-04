<%-- 
    Document   : ShowBill
    Created on : 03/07/2016, 12:17:44 PM
    Author     : Edgardo Quirós
--%>

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

<div class="formClass">

    <iframe src="BuildBill.jsp" width="400px" height="400px"></iframe>

</div>

<%@include file="footer.jsp"%>

<%@include file="MessageValidator.jsp"%>
