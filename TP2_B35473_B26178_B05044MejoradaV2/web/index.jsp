
<%@page import="objectModel.UserModel" %> 
<%@include file="header.jsp" %> 

<div id="menus">
    <%@include file="informationMenu.jsp"%>

    <%@include file="CategoryMenu.jsp"%>
</div>

<div   id="userMenu" >
    <%@include file="SessionMenu.jsp" %>
</div>


<%@include file="ContentTop10.jsp"%>

<%@include file="footer.jsp"%>