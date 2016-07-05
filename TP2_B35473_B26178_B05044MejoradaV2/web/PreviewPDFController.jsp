<%-- 
    Document   : PreviewPDFController
    Created on : 04/07/2016, 06:28:30 PM
    Author     : Ana Teresa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="billSession" scope="session" class="objectModel.Bill_Model" />

<%
    try {
        int idBillCurrent = Integer.parseInt(request.getParameter("bill"));
%>
<jsp:setProperty name="billSession" property="id" value="<%=idBillCurrent%>" />
<%
        response.sendRedirect("ShowBill.jsp");
    } catch (Exception e) {
        
    }
%>