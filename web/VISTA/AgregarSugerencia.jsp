<%@page import="Modelo.Area"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page import="Modelo.Rol"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Sugerencia</title>
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row text-center">
                <h2>Agregar Sugerencia</h2>
            </div><br>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-9">
                    <form name="AgregarSugerenciaForm" action="Controladora" method="get" class="form-horizontal">
                        <div class="form-group">
                            <label for="1" class="col-md-2 control-label">Fecha: </label>
                            <div class="col-md-2">
                              <input class="form-control" type="text" name="f_fecha" value="" maxlength="6"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="2" class="col-sm-2 control-label">Descripción: </label>
                            <div class="col-md-2">
                              <input class="form-control" type="text" name="f_descripcion" value="" maxlength="2"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Persona: </label>
                            <div class="col-md-5">
                                <select class="form-control" name="f_idpersona">
                                    <%
                                    PersonaDAO PersonaDAO = new PersonaDAO();
                                    List<Persona> personas = PersonaDAO.listapersona();
                                    Iterator<Persona> iterator = personas.iterator();
                                    Persona persona = null;
                                    while (iterator.hasNext()) {
                                        persona = iterator.next();
                                    %>
                                    <option value="<%out.print(persona.getIdpersona());%>"><%out.print(persona.getNombre()+" "+persona.getApellidos());%></option>
                                    <%}
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Area: </label>
                            <div class="col-md-4">
                              <select class="form-control" name="f_idarea">
                                    <%
                                    AreaDAO areaDAO = new AreaDAO();
                                    List<Area> areas = areaDAO.listaarea();
                                    Iterator<Area> iterator2 = areas.iterator();
                                    Area area = null;
                                    while (iterator2.hasNext()) {
                                        area = iterator2.next();
                                    %>
                                    <option value="<%out.print(area.getIdarea());%>"><%out.print(area.getNombre());%></option>
                                    <%}
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Rol</label>
                            <div class="col-md-3">
                              <select class="form-control" name="f_idrol">
                                 <%
                                    RolDAO rolDAO = new RolDAO();
                                    List<Rol> roles = rolDAO.listarol();
                                    Iterator<Rol> iterator3 = roles.iterator();
                                    Rol rol = null;
                                    while (iterator3.hasNext()) {
                                        rol = iterator3.next();
                                    %>
                                    <option value="<%out.print(rol.getIdrol());%>"><%out.print(rol.getNombre());%></option>
                                    <%}
                                    %>
                              </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input class="btn btn-primary" type="submit" value="Agregar Sugerencia" name="agregar" />
                                <input type="hidden" value="agregarsugerencia02" name="f_accion"/>
                            </div>
                        </div>

                    </form>
                    
                </div>
            </div>
            <div class="row">
                <ol class="breadcrumb">
                        <li><a href="index.html">Inicio</a></li>
                        <li><a href="Controladora?f_accion=listarsugerencia">Lista Sugerencia</a></li>
                        <li class="active">Agregar Sugerencia</li>
                </ol>
            </div>
        </div>
    </body>
</html>