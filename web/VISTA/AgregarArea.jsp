<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Área</title>
        <link href="../CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form name="AgregarÁreaForm" action="Controladora" method="get">
                <table class="table tab-content">
                    <thead>
                        <tr>
                            <th class="text-center" colspan="2">Agregar Área</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-right">Nombre: </td>
                            <td><input type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                        </tr>
                            <td class="text-right">Estado: </td>
                            <td><input type="text" name="f_estado" value="" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="9">
                                <input class="btn-primary" type="submit" name="agregar" value="Agregar Area" />
                                <input type="hidden" name="f_accion" value="agregararea02" />
                            </td>
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

