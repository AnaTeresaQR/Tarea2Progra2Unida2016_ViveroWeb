<%-- 
    Document   : MessageValidator
    Created on : 02/07/2016, 11:54:30 PM
    Author     : Ana Teresa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String msj = (String) request.getParameter("msj");
    String optionS = (String) request.getParameter("optionselect").trim();
    if (optionS != null) {
        int typeValue = Integer.parseInt(optionS);
        if (msj == null) {
            msj = "";
        } else {
            switch (typeValue) {
                case 1:
%>
<p><%=msj%></p>
<%
        break;
    case 2:
%>
<script>alert('<%=msj%>');</script>
<%
                    break;
            }
        }
    }
%>

