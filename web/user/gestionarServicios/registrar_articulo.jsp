<%-- 
    Document   : registrar_articulo
    Created on : 01-ago-2012, 1:57:03
    Author     : jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session='true'%>
<!DOCTYPE html>
<jsp:useBean id="fachada" scope="session" class="negocio.Hotel_facade" />
<html>
    <head>
<%
        
        HttpSession sesion=request.getSession(); 
        
        if (sesion.getAttribute("rol") == null) {

            response.sendRedirect("../../iniciarSesion.jsp?error=Es obligatorio identificarse");
        }
        String rol = (String)sesion.getAttribute("rol");
        String id = (String)sesion.getAttribute("id");
        String msj = (String)sesion.getAttribute("htmlmenu");
        
        String nombre = request.getParameter("nombre");
        String precio = request.getParameter("precio");        
        String cantidad = request.getParameter("cantidad");
%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../css/login.css" type="text/css">
        <title>Registrar Artículos - Hotel Quinta Avenida</title>
      <script type="text/javascript" src="../../js/menu.js"></script>
        <script type="text/javascript">
            var menu1 = new Desplegable(<%= "'"+msj+"'" %>);
        </script>
    </head>
    <body onload="menu1.escribeacordeon('menu',22,5);">
        <div id="todo">  
        <div class="cabecera">
       
        </div>
        <div class ="´principal">
            <div class="menu" id="menu"> 
        
            </div>
            
            <div class="contenido">
                <div class="bloqueA">
                    <div class="separador">Información</div><br>
                <%=fachada.registrarArticulo(nombre,precio,cantidad)%>
                <br><br>
                </div>
            </div>
        </div>
       </div>
    </body>
</html>
