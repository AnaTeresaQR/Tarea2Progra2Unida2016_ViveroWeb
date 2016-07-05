<%@page import="objectModel.UserModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.BillController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    UserModel userInSession = (UserModel) session.getAttribute("user");
    BillController bc = new BillController();
    ArrayList preview = bc.previewBills(userInSession.getId());
    session.setAttribute("previewList", preview);
    response.sendRedirect("PreviewsBills.jsp");
%>
