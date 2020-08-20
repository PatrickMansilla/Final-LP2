<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Persona</title>
        <link href="../CSS/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form name="AgregarPersonaForm" action="Controladora" method="get">
                <table  class="table tab-content">
                    <thead>
                        <tr>
                            <th class="text-center"  colspan="2">Agregar Persona</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre: </td>
                            <td><input type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Apellido: </td>
                            <td><input type="text" name="f_apellidos" value="" maxlength="30" size="40" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">DNI: </td>
                            <td><input type="text" name="f_dni" value="" maxlength="9" size="8" /></td>
                        </tr>
                        <tr>
                            <td class="text-right">Dirección: </td>
                            <td><input type="text" name="f_direccion" value="" maxlength="40" size="50" /></td>
                        </tr>
                            <td class="text-right">Estado: </td>
                            <td><input type="text" name="f_estado" value="" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="2">
                                <input class = "btn-primary" type="submit" name="agregar" value="Agregar Persona" />
                                <input type="hidden" name="f_accion" value="agregarpersona02" />
                            </td>
                            <tr align ='center' >
                            <td class="btn-primary" colspan="9" ><a href="VISTA/ListarPersona.jsp"><input type="button" value="SALIR" name="f_salir" /></a></td>   
                        </tr>
                        </tr>
                    </tbody>
                </table>
                
            </form>
        </div>
    </body>
</html>

