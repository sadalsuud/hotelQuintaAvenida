<%-- 
    Document   : form_listar_salones
    Created on : 05-ago-2012, 15:24:37
    Author     : jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="fachada" scope="session" class="negocio.Hotel_facade" />
<%@page session='true'%>
<html>
    <head>
        <% 
        
        HttpSession sesion=request.getSession(); 
        
        if (sesion.getAttribute("rol") == null) {

            response.sendRedirect("../iniciarSesion.jsp?error=Es obligatorio identificarse");
        }
        String rol = (String)sesion.getAttribute("rol");
        String id = (String)sesion.getAttribute("id");
        String msj = (String)sesion.getAttribute("htmlmenu"); 
        %>
        <script type="text/javascript" src="../../js/jquery-1.4.4.min.js" ></script>  
        <script type="text/javascript" src="../../js/dataTables.min.js" ></script>  
        <script type="text/javascript" src="../../js/ajax.js" ></script>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../css/login.css" type="text/css">
        
        <title>JSP Page</title>
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
                <div class='bloqueA'>
                    <div class="separador"><p>Lista de Salones</p></div><br>
                <%= fachada.listaSalonesHTML() %>
                
                <script language="JavaScript">$
                    function cargarTabla(){
                    
                            $("#ejemplo").dataTable(); 
                            } 
                        
                            ;</script>
                </div>
                <div class="bloqueB" id="bloqueB">
                    
                </div>
            </div>
        </div>
       </div>
    </body>
</html>
