<%@page import="Modelo.Sugerencia"%>
<%@page import="ModeloDAO.SugerenciaDAO"%>
<%@page import="Modelo.Area"%>
<%@page import="ModeloDAO.AreaDAO"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="Modelo.Rol"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar Sugerencia</title>
    </head>
    <body>
        <div class="container">
            <%
                SugerenciaDAO SugerenciaDAO = new SugerenciaDAO();
                int s_idsugerencia = Integer.valueOf(request.getParameter("f_idsugerencia"));
                Sugerencia sugerencia = (Sugerencia)SugerenciaDAO.buscarsugerencia(s_idsugerencia);
            %>
            
            <div class="row text-center">
                <h2>Editar Sugerencia</h2>
            </div><br>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-9">
                    <form name="EditarSugerenciaForm" action="Controladora" method="get" class="form-horizontal">
                        <div class="form-group">
                            <label for="1" class="col-md-2 control-label">Fecha</label>
                            <div class="col-md-2">
                              <input class="form-control" type="text" name="f_fecha" value="<% out.println(sugerencia.getFecha()); %>" maxlength="6"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="2" class="col-sm-2 control-label">Descripcion</label>
                            <div class="col-md-2">
                              <input class="form-control" type="text" name="f_descripcion" value="<% out.println(sugerencia.getDescripcion()); %>" maxlength="2"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Persona</label>
                            <div class="col-md-5">
                                <select class="form-control" name="f_idpersona">
                                    <%
                                    PersonaDAO PersonaDAO = new PersonaDAO();
                                    List<Persona> personas = PersonaDAO.listapersona();
                                    Iterator<Persona> iterator = personas.iterator();
                                    Persona persona = null;
                                    while (iterator.hasNext()) {
                                        persona = iterator.next();
                                        
                                        if(persona.getIdpersona()==sugerencia.getPersona().getIdpersona()){
                                    %>
                                    <option value="<%out.print(persona.getIdpersona());%>" selected><%out.print(persona.getNombre()+" "+persona.getApellidos());%></option>
                                        
                                    <%}else{%>
                                    <option value="<%out.print(persona.getIdpersona());%>"><%out.print(persona.getNombre()+" "+persona.getApellidos());%></option>
                                    <%}
                                    }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Rol</label>
                            <div class="col-md-4">
                              <select class="form-control" name="f_idrol">
                                    <%
                                    RolDAO rolDAO = new RolDAO();
                                    List<Rol> rols = rolDAO.listarol();
                                    Iterator<Rol> iterator2 = rols.iterator();
                                    Rol rol = null;
                                    while (iterator2.hasNext()) {
                                        rol = iterator2.next();
                                        
                                        if(rol.getIdrol()==sugerencia.getRol().getIdrol()){
                                    %>
                                    <option value="<%out.print(rol.getIdrol());%>" selected><%out.print(rol.getNombre());%></option>
                                    <%}else{%>
                                    %>
                                    <option value="<%out.print(rol.getIdrol());%>"><%out.print(rol.getNombre());%></option>
                                    <%}
                                    }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="3" class="col-sm-2 control-label">Area</label>
                            <div class="col-md-3">
                              <select class="form-control" name="f_idarea">
                                 <%
                                    AreaDAO areaDAO = new AreaDAO();
                                    List<Area> areas = areaDAO.listaarea();
                                    Iterator<Area> iterator3 = areas.iterator();
                                    Area area = null;
                                    while (iterator3.hasNext()) {
                                        area = iterator3.next();
                                        
                                        if(area.getIdarea()==sugerencia.getArea().getIdarea()){
                                    %>
                                    <option value="<%out.print(area.getIdarea());%>" selected><%out.print(area.getNombre());%></option>
                                    <%}else{
                                    %>
                                    <option value="<%out.print(area.getIdarea());%>"><%out.print(area.getNombre());%></option>
                                    <%}
                                    }
                                    %>
                              </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <input class="btn btn-primary" type="submit" value="Editar Sugerencia" name="editar" />
                                <input type="hidden" value="editarsugerencia02" name="f_accion"/>
                                <input type="hidden" value="<% out.print(sugerencia.getIdsugerencia()); %>" name="f_idsugerencia">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <ol class="breadcrumb">
                        <li><a href="index.html">Inicio</a></li>
                        <li><a href="Controladora?f_accion=listarsugerencia">Lista Sugerencia</a></li>
                        <li class="active">Editar Sugerencia</li>
                </ol>
            </div>
        </div>
    </body>
</html>
