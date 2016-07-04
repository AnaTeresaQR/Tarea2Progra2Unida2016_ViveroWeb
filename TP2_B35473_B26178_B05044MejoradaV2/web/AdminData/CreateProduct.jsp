<%@include file="headerAdmin.jsp" %>
<%@page import="xmlProducts.ProductsXmlManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<div id="createUpdateProduct">
    <form  id="adminForm" method="get" action="CreateProductController.jsp">          
        <label>Nombre del producto:</label> 
        <input type="text" id ="productName" name="productName" placeholder="Ingrese el nombre del producto" required/>
        <br>
        <label>Categoría:</label>
        <br>
        <select name="selectCategory" size="1">
            <option name="ArbolesFrutales" value="Arbol frutal">Árboles Frutales</option>
            <option name="ArbolesMaderable" value="Arbol Maderable">Árboles Maderables</option>
            <option name="HerramientasJardineria" value="Herramienta de jardineria">Herramientas de Jardinería</option>
            <option name="PlantaCulinaria" value="Planta culinaria">Plantas Culinarias</option>
            <option name="PlantasMedicinales" value="Plantas Medicinales">Plantas Medicinales</option>
            <option name="PlantasOrnamentales" value="Plantas Ornamentales">Plantas Ornamentales</option>
            <option name="ProductoOrganico" value="Producto organico">Productos Orgánicos</option>
            <option name="ServicioJardineria" value="Servicio de jardineria">Servicios de Jardinería</option>
        </select>
        <br/>
        <label>Descripción corta del producto:</label>
        <br>
        <textarea id ="shortDescription" name="shortDescription" placeholder="Digite una descripción corta para el producto"  rows="5" cols="40" required></textarea>
        <br/>
        <label>Descripción detallada del producto:</label>
        <br>
        <textarea id ="longDescription" name="longDescription" placeholder="Digite una descripción detallada para el producto"  rows="10" cols="40" required></textarea>
        <br/>
        <label>Precio del producto:</label> 
        <input type="text" id ="productPrice" name="productPrice" placeholder="Ingrese el precio del producto" required/>
        <br/>
        <label>Cantidad disponible de productos:</label> 
        <input id="productsForSell"  name="productsForSell" type="number" min="0" max="99">
        <br/>
        <div id="ImagesP">
            <label>Agregar imagen 1:</label>
            <input name="image1" type="file" />
            <br>
            <label>Agregar imagen 2:</label>
            <input name="image2" type="file" />
            <br>
            <label>Agregar imagen 3:</label>
            <input name="image3" type="file" />

            <br><br/>
            <input type="submit" value="Guardar" class="buttonsAction"/>
            <input type="reset" value="Vaciar Campos" class="buttonsAction"/>
            <br><br>
            <a href="ProductsAdministrator.jsp" class="buttonsAction">Regresar</a> 
        </div>
    </form>
</div>

<%@include file="footerAdmin.jsp" %> 
