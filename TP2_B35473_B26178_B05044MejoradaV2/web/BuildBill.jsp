<%-- 
    Document   : BuildBill
    Created on : 02/07/2016, 08:39:32 AM
    Author     : Edgardo Quirós
--%>

<%@page import="net.sf.jasperreports.export.SimpleOutputStreamExporterOutput"%>
<%@page import="net.sf.jasperreports.export.SimpleExporterInput"%>
<%@page import="net.sf.jasperreports.engine.export.JRPdfExporter"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="java.io.File"%>
<%@page import="DataBase.DataBaseManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:useBean id="billSession" scope="session" type="objectModel.Bill_Model" />


<%
    try {
        DataBaseManager conexion = new DataBaseManager();
        Map parameters = new HashMap();
        parameters.put("Bill_Id", ""+billSession.getId());
        File report = new File(application.getRealPath("billReport.jasper"));
        byte[] bytes = JasperRunManager.runReportToPdf(report.getPath(), parameters, conexion.connectDataBase());
        response.setContentType("application/pdf");
        response.setContentLength(bytes.length);
        ServletOutputStream outputstream = response.getOutputStream();
        outputstream.write(bytes, 0, bytes.length);

        outputstream.flush();
        outputstream.close();

    } catch (Exception ex) {

    }

%>
