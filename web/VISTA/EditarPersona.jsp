<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Personas</title>
        <link href="../CSS/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%
                PersonaDAO personaDAO = new PersonaDAO();
                int s_idpersona = Integer.valueOf(request.getParameter("f_idpersona"));
                Persona persona = (Persona)personaDAO.buscarpersona(s_idpersona);                
            %>
            <form name="EditarPersonasForm" action="Controladora" method="get">
                <table class="table tab-content">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Editar Personas</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre: </td>
                            <td><input type="text" name="f_nombre" value="<% out.print(persona.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Apellidos: </td>
                            <td><input type="text" name="f_apellidos" value="<% out.print(persona.getApellidos()); %>" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">DNI: </td>
                            <td><input type="text" name="f_dni" value="<% out.print(persona.getDni()); %>" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Dirección: </td>
                            <td><input type="text" name="f_direccion" value="<% out.print(persona.getDireccion()); %>" maxlength="40" size="50" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Estado</td>
                            <td><input type="text" name="f_estado" value="<% out.print(persona.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2">
                                <input class="btn-info" type="submit" name="editar" value="Editar Persona" />
                                <input type="hidden" name="f_accion" value="editarpersona02" />
                                <input type="hidden" name="f_idpersona" value="<% out.print(persona.getIdpersona()); %>" />
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
