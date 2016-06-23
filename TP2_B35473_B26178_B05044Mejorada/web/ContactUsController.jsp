<%-- 
    Document   : ContactUsController
    Created on : 17/06/2016, 06:46:37 PM
    Author     : Ana Teresa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.ConsultController" %>
<%@page  import="objectModel.ConsultModel" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%request.setCharacterEncoding("utf-8");%>
        <jsp:useBean id="consultModel" scope="page" class="objectModel.ConsultModel"/>

        <jsp:setProperty name="consultModel" property="completeName" param="completeName"/>
        <jsp:setProperty name="consultModel" property="email" param="email"/>
        <jsp:setProperty name="consultModel" property="message" param="message"/>

        <%
            ConsultController consultController = new ConsultController();
            consultController.createConsultModel(consultModel);

        %>
    </body>
</html>
