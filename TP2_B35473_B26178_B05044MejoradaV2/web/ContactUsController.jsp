<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.ConsultController" %>
<%@page  import="objectModel.ConsultModel" %>
<!DOCTYPE html>

        <%request.setCharacterEncoding("utf-8");%>
        <jsp:useBean id="consultModel" scope="page" class="objectModel.ConsultModel"/>

        <jsp:setProperty name="consultModel" property="completeName" param="completeName"/>
        <jsp:setProperty name="consultModel" property="email" param="email"/>
        <jsp:setProperty name="consultModel" property="message" param="message"/>

        <%
            ConsultController consultController = new ConsultController();
            boolean result = consultController.createConsultModel(consultModel);
            String messageConsult = "";
            if (result) {
                response.sendRedirect("index.jsp");
            } else {
                messageConsult = "Problemas al enviar su consulta.\nPor favor intente de nuevo";
                response.sendRedirect("ContactUs.jsp?msj=" + messageConsult + "&optionselect=1");
            }
        %>

