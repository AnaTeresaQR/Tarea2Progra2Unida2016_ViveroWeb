<%@page import="xmlProducts.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headerAdmin.jsp" %>

<!DOCTYPE html>

<%
    List<Product> fruitTreeList = (List<Product>) session.getAttribute("fruitTreeList");
    List<Product> woodTreeList = (List<Product>) session.getAttribute("woodTreeList");
    List<Product> gardenToolList = (List<Product>) session.getAttribute("gardenToolList");
    List<Product> cookPlantList = (List<Product>) session.getAttribute("cookPlantList");
    List<Product> medicinePlantList = (List<Product>) session.getAttribute("medicinePlantList");
    List<Product> ornamentalPlantList = (List<Product>) session.getAttribute("ornamentalPlantList");
    List<Product> organicProductList = (List<Product>) session.getAttribute("organicProductList");
    List<Product> gardenServiceList = (List<Product>) session.getAttribute("gardenServiceList");
%>
<form id="adminForm" action="ActionController.jsp">
    </br>
    <select name="selectProduct" size="20">
        <optgroup label="Árboles Frutales">
            <%
                for (int i = 0; i < fruitTreeList.size(); i++) {
                    Product p = fruitTreeList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% } %>
        </optgroup>
        <optgroup label="Árboles Maderables">
            <%
                for (int i = 0; i < woodTreeList.size(); i++) {
                    Product p = woodTreeList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% } %>
        </optgroup>
        <optgroup label="Herramientas de Jardinería">
            <%
                for (int i = 0; i < gardenToolList.size(); i++) {
                    Product p = gardenToolList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% } %>
        </optgroup>
        <optgroup label="Plantas Culinarias">
            <%
                for (int i = 0; i < cookPlantList.size(); i++) {
                    Product p = cookPlantList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% } %>
        </optgroup>
        <optgroup label="Plantas Medicinales">
            <%
                for (int i = 0; i < medicinePlantList.size(); i++) {
                    Product p = medicinePlantList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% } %>
        </optgroup>
        <optgroup label="Plantas Ornamentales">
            <%
                for (int i = 0; i < ornamentalPlantList.size(); i++) {
                    Product p = ornamentalPlantList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% } %>
        </optgroup>
        <optgroup label="Productos Orgánicos">
            <%
                for (int i = 0; i < organicProductList.size(); i++) {
                    Product p = organicProductList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% } %>
        </optgroup>
        <optgroup label="Servicios de Jardinería">
            <%
                for (int i = 0; i < gardenServiceList.size(); i++) {
                    Product p = gardenServiceList.get(i);
            %>
            <option name="product" id="product" value="<%=p.getProductId()%>"><%=p.getName()%></option>
            <% }%>
        </optgroup>
    </select>
    <br><br>
    <input type="submit" name="action" value="Eliminar Producto" class="buttonsAction">
    <input type="submit" name="action" value="Actualizar Producto" class="buttonsAction">
    <input type="submit" name="action" value="Mostrar Producto" class="buttonsAction">
    <br><br>
    <a id="addProduct" href="CreateProduct.jsp" class="buttonsAction" >Agregar producto </a>
    <br><br>
</form>

<%@include file="footerAdmin.jsp" %>

<%@include file="../MessageValidator.jsp" %>
