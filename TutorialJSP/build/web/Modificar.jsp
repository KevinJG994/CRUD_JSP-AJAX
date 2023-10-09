<%-- 
    Document   : Modificar
    Created on : 09-oct-2023, 14:50:42
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
        <h1>Modificar producto</h1>
        
        <% ControladorProductos cp = new ControladorProductos();
            int idProducto = Integer.parseInt(request.getParameter("id"));
        %>      
        
        <%= cp.getEditViewProducto(idProducto)%>
        
        <br>
        <button onclick="window.location.href='Administracion.jsp'">Ver Productos</button>

    </body>
</html>
