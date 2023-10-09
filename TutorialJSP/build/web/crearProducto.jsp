<%-- 
    Document   : crearProducto
    Created on : 06-oct-2023, 12:28:00
    Author     : Kevin J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <script type="text/javascript" src="js/jquery.min.js"></script>
              <script type="text/javascript" src="js/main.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo Producto</h1>
        <form action="crearProducto" name="frmNuevo" method="POST" enctype="multipart/form-data" id="frm_nuevo">
            <table>
                <tr>
                    <td><label for="">Nombre:</label></td>
                    <td><input type="text" name="nombre" id="nombre"></td>
                </tr>
                <tr>
                    <td><label for="">Descripcion:</label></td>
                    <td><textarea cols="30" rows="6" name="descripcion" id="descripcion"></textarea></td>
                </tr>
                <tr>
                    <td><label for="">Precio:</label></td>
                    <td><input type="text" name="precio" id="precio"></td>
                </tr>
                <tr>
                    <td><label for="">Categoria:</label></td>
                    <td><input type="text" name="categoria" id="categoria"></td>
                </tr>
                 <tr>
                    <td><label for="">Detalles:</label></td>
                    <td><textarea cols="30" rows="6" name="detalles" id="detalles"></textarea></td>
                </tr>
                <tr>
                    <td><label for="">Reviews:</label></td>
                    <td><textarea cols="30" rows="6" name="reviews" id="reviews"></textarea></td>
                </tr>
                 <tr>
                    <td><label for="">Tamanio:</label></td>
                    <td>
                        <select name="tamanio" id="tamanio">
                            <option value="Seleccione una opcion">Seleccione una opcion</option>
                            <%for (int i = 1; i <= 20; i++) {%>
                            <option value='<%= i%>'><%= i%></option>
                            <%}%>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="">Color:</label></td>
                    <td><input type="text" name="color" id="color"></td>
                </tr>
                <tr>
                    <td><label for="">Imagenes:</label></td>
                    <td><input type="file" name="file[]" id="archivos" multiple></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Crear Producto" id="btnCrearProducto"></td>
                </tr>
            </table>
            
        </form>
                        
        <br>
        <button onclick="window.location.href='Administracion.jsp'">Ver Productos</button>
        
    </body>
</html>
