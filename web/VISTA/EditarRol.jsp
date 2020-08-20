<%@page import="Modelo.Rol"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Rol</title>
        <link href="../CSS/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                RolDAO rolDAO = new RolDAO();
                int s_idrol = Integer.valueOf(request.getParameter("f_idrol"));
                Rol rol= (Rol)rolDAO.buscarrol(s_idrol);                
            %>
            <form name="EditarRolForm" action="Controladora" method="get">
                <table class="table tab-content">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Rol</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre: </td>
                            <td><input type="text" name="f_nombre" value="<% out.print(rol.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado: </td>
                            <td><input type="text" name="f_estado" value="<% out.print(rol.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2">
                                <input class="btn-info" type="submit" name="editar" value="Editar Rol" />
                                <input type="hidden" name="f_accion" value="editarrol02" />
                                <input type="hidden" name="f_idrol" value="<% out.print(rol.getIdrol()); %>" />
                            </td>
                        </tr>
                        <tr align ='center' >
                            <td class="btn-info" colspan="9" ><a href="VISTA/ListarArea.jsp"><input type="button" value="SALIR" name="f_salir" /></a></td>   
                        </tr>
                        </tr>
                    </tbody>
                </table>

            </form>
            
        </div>
    </body>
</html>
