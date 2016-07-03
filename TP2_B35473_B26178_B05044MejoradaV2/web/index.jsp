
<%@page import="java.util.ArrayList"%>
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

<%    String msj = (String) request.getParameter("msj");

    if (msj == null) {
        msj = "";
    } else {
%>
<script>alert('<%=msj%>');</script>
<%
    }
%>

<%@include file="footer.jsp"%>