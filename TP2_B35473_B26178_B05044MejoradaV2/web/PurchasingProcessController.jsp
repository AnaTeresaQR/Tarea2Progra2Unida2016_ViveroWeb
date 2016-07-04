<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="objectModel.UserModel"%>
<%@page import="buy.CartManager"%>
<%@page import="objectModel.Bill_Model"%>
<%@page import="controller.BillController"%>
<!DOCTYPE html>

<jsp:useBean id="billSession" scope="session" class="objectModel.Bill_Model" />
<%request.setCharacterEncoding("utf-8");%>
<%
    try {
        String typeCard = (String) request.getParameter("selectTypeCard");
        String entityCard = (String) request.getParameter("selectEntityCard");
        String provinceSelect = (String) request.getParameter("province").trim();
        String cantonSelect = (String) request.getParameter("canton").trim();
        String districtSelect = (String) request.getParameter("district").trim();
        String completeLocation = (String) request.getParameter("location");
        String numCard = (String) request.getParameter("numcard");
        String expDateCard = (String) request.getParameter("expDate");

        UserModel userInSession = (UserModel) session.getAttribute("user");

        String completeDirection = provinceSelect + " " + cantonSelect + " " + districtSelect + " " + completeLocation;

        BillController billController = new BillController();
        boolean continueShopping = billController.validateInputs(typeCard, entityCard, provinceSelect, cantonSelect, districtSelect, completeLocation, numCard, expDateCard);
        if (continueShopping) {
            CartManager cm = CartManager.getInstance();

            Bill_Model billUser = new Bill_Model(userInSession, completeDirection, numCard, typeCard, expDateCard, entityCard, cm.getListProducts(), cm.getSubTotal(), cm.getTotal());

            if (billUser != null) {
                boolean resultBill = billController.createBillModel(billUser);
                if (resultBill) {
%>

<jsp:setProperty name="billSession" property="id" value="<%=billUser.getId()%>" />
<jsp:setProperty name="billSession" property="user" value="<%=billUser.getUser()%>" />
<jsp:setProperty name="billSession" property="addressUser" value="<%=billUser.getAddressUser()%>" />
<jsp:setProperty name="billSession" property="billDate" value="<%=billUser.getBillDate()%>" />
<jsp:setProperty name="billSession" property="numCard" value="<%=billUser.getNumCard()%>" />
<jsp:setProperty name="billSession" property="typeCard" value="<%=billUser.getTypeCard()%>" />
<jsp:setProperty name="billSession" property="dateExp" value="<%=billUser.getDateExp()%>" />
<jsp:setProperty name="billSession" property="creditInstitution" value="<%=billUser.getCreditInstitution()%>" />
<jsp:setProperty name="billSession" property="products" value="<%=billUser.getProducts()%>" />
<jsp:setProperty name="billSession" property="subtotal" value="<%=billUser.getSubtotal()%>" />
<jsp:setProperty name="billSession" property="total" value="<%=billUser.getTotal()%>" />

<%
                    response.sendRedirect("ConfirmPurchase.jsp");
                }
            } else {
                String msj = "No es posible procesar su factura,\nPor favor Intente de nuevo";
                response.sendRedirect("PurchasingProcess.jsp?msj=" + msj + "&optionselect=2");
            }

        } else {
            String msj = "No se puede continuar el proceso de la factura,\nPor favor Intente de nuevo";
            response.sendRedirect("PurchasingProcess.jsp?msj=" + msj + "&optionselect=2");
        }

    } catch (Exception e) {
        //  String msj = "Algunos de sus datos no pueden ser procesados,\nPor favor Intente de nuevo";
        // response.sendRedirect("PurchasingProcess.jsp?msj=" + msj + "&optionselect=2");
        e.printStackTrace();
    }
%>
<%--
<p>
    <%=typeCard%>
    <%=entityCard%>
    <%=provinceSelect%>
    <%=cantonSelect%>
    <%=districtSelect%>
    <%=completeLocation%>
    <%=expDateCard%>
    <%=userInSession%>
    <%=completeDirection%>
</p> --%>




