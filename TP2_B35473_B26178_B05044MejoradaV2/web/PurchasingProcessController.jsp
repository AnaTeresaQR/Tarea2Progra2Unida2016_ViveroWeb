
<%@page import="objectModel.UserModel"%>
<%@page import="buy.CartManager"%>
<%@page import="objectModel.Bill_Model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.BillController"%>
<!DOCTYPE html>

<%
    try {
        String typeCard = (String) request.getParameter("selectTypeCard");
        String entityCard = (String) request.getParameter("selectEntityCard");
        String provinceSelect = (String) request.getParameter("province");
        String cantonSelect = (String) request.getParameter("canton");
        String districtSelect = (String) request.getParameter("district");
        String completeLocation = (String) request.getParameter("location");
        String numCard = (String) request.getParameter("numcard");
        String expDateCard = (String) request.getParameter("expDate");

        String completeDirection = provinceSelect + " " + cantonSelect + " " + districtSelect + " " + completeLocation;

        BillController billController = new BillController();
        boolean continueShopping = billController.validateInputs(typeCard, entityCard, provinceSelect, cantonSelect, districtSelect, completeLocation, numCard, expDateCard);
        if (continueShopping) {
            CartManager cm = CartManager.getInstance();
            UserModel userInSession = (UserModel) request.getAttribute("user");
            Bill_Model billUser = new Bill_Model(userInSession, completeDirection, numCard, typeCard, expDateCard, entityCard, cm.getListProducts(), cm.getSubTotal(), cm.getTotal());
            if (billUser != null) {
                boolean resultBill = billController.createBillModel(billUser);
                if (resultBill) {
                    %>
                    <p>entro</p>
                    <%
                } else {
                    String msj = "No es posible procesar su factura,\nPor favor Intente de nuevo";
                    response.sendRedirect("PurchasingProcess.jsp?msj=" + msj + "&optionselect=2");
                }
            }

        } else {
            String msj = "No se puede continuar el proceso de la factura,\nPor favor Intente de nuevo";
            response.sendRedirect("PurchasingProcess.jsp?msj=" + msj + "&optionselect=2");
        }
%>
<p>
    <%=cantonSelect%>
    <%=districtSelect%>
</p>
<%

    } catch (Exception e) {
      //  String msj = "Algunos de sus datos no pueden ser procesados,\nPor favor Intente de nuevo";
       // response.sendRedirect("PurchasingProcess.jsp?msj=" + msj + "&optionselect=2");
        e.printStackTrace();
    }
%>



