<%@page import="Modelo.Sugerencia"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.SugerenciaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Listar Sugerencia</title>
    </head>
    <body>
        <div class="container">
            <div class="row text-center">
                <h1>Listado de Sugerencias</h1>
            </div>
            <div class="row">
                <a class="btn btn-success" href="Controladora?f_accion=agregarsugerencia01">Agregar Sugerencia</a>
            </div><br>
            <div class="row">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">N</th>
                            <th class="text-center">Fecha</th>
                            <th class="text-center">Descripción</th>
                            <th class="text-center">Persona</th>
                            <th class="text-center">Area</th>
                            <th class="text-center">Rol</th>
                            <th class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            SugerenciaDAO sugerenciaDAO = new SugerenciaDAO();
                            List<Sugerencia> sugerencias = sugerenciaDAO.listarsugerencia();
                            Iterator<Sugerencia> iterator = sugerencias.iterator();
                            Sugerencia sugerencia = null;
                            while (iterator.hasNext()) {
                                sugerencia = iterator.next();


                        %>
                        <tr>
                            <td><% out.print(sugerencia.getIdsugerencia()); %></td>
                            <td><% out.print(sugerencia.getFecha()); %></td>
                            <td><% out.print(sugerencia.getDescripcion()); %></td>
                            <td><% out.print(sugerencia.getPersona().getNombre()); %></td>
                            <td><% out.print(sugerencia.getArea().getNombre()); %></td>
                            <td><% out.print(sugerencia.getRol().getNombre()); %></td>
                            <td>
                                <a class="btn btn-warning" href="Controladora?f_accion=editarsugerencia01&f_idsugerencia=<% out.print(sugerencia.getIdsugerencia()); %>">
                                    Editar
                                </a>
                                <a class="btn btn-danger" href="Controladora?f_accion=eliminarsugerencia&f_idsugerencia=<% out.print(sugerencia.getIdsugerencia()); %>">
                                    Eliminar
                                </a>


                            </td>
                        </tr>
                        <%    }
                        %>                    
                    </tbody>
                </table>
            </div>
            <div class="row">
                <ol class="breadcrumb">
                        <li><a href="index.html">Inicio</a></li>
                        <li class="active">Lista Sugerencia</li>
                </ol>
            </div>
        </div>
    </body>
</html>
