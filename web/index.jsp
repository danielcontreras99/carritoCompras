
<%@page import="pe.edu.unmsm.sistemas.Articulo"%>
<%@page import="pe.edu.unmsm.sistemas.Articulos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de compras</title>
    </head>
    <body>
        <h1>Catalogo</h1>
        <table>
            <tr>
                <th>Imagen</th>
                <th>Código</th>
                <th>Descripción</th>
                <th>Stock</th>
                <th>Precio</th>
            </tr>
            <%
                Articulos catalogo = Articulos.Singleton();
                for( Articulo articulo : catalogo.getArticulos() ) {
            %>
            <tr>
                <th><img src= "<%= articulo.getImagen() %>" alt="NODISP"/></th>
                <td><%= articulo.getCodigo() %> </td>
                <td><a href="/carritoCompras/agregarCarrito?c=<%= articulo.getCodigo() %>" ><%= articulo.getDescripcion()%></a></td>
                <td><%= articulo.getStock()%> </td>
                <td><%= articulo.getPrecio()%> </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
