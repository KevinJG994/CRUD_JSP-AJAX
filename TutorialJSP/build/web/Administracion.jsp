<%-- 
    Document   : Administracion
    Created on : 09-oct-2023, 13:39:33
    Author     : Kevin J
--%>

<%@page import="Controlador.ControladorProductos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery.min.js" ></script>
        <script src="js/panelAdministrador.js" ></script>
    </head>
    <body>
        <h1>Panel de Administrador</h1>
        <% ControladorProductos cp = new ControladorProductos();%>
        <%= cp.getPanelView() %>
        
        <br>
        <button onclick="window.location.href='crearProducto.jsp'">Nuevo Producto</button>

    </body>
</html>
