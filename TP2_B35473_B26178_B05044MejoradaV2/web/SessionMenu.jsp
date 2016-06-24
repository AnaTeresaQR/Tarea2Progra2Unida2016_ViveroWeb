<%@page import="objectModel.UserModel" %>
<%

    UserModel sessionUserT = (UserModel) session.getAttribute("user");
    if (sessionUserT == null) {
%>
<%@include file="userMenu.jsp"%>
<%
} else {
%>
<%@include file="UserLoginMenu.jsp"%>
<%
    }

%>
