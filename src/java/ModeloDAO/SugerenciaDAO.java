package ModeloDAO;

import Config.bd.ConectaBd;
import Interfaces.CRUDsugerencia;
import Modelo.Area;
import Modelo.Persona;
import Modelo.Rol;
import Modelo.Sugerencia;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SugerenciaDAO implements CRUDsugerencia{
    
    ConectaBd cn = new ConectaBd();
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Sugerencia s = new Sugerencia();
    PersonaDAO personaDAO = new PersonaDAO();
                            
    @Override
    public List listarsugerencia() {
        ArrayList<Sugerencia> sugerencias = new ArrayList<>();
        String consulta =  " select * from persona" ;
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {    
                
                Sugerencia sugerencia = new Sugerencia();
                Persona persona = new Persona();
                Area area = new Area();
                Rol rol = new Rol();
                             
                sugerencia.setIdsugerencia(rs.getInt("s.idsugerencia"));
                sugerencia.setFecha(rs.getString("s.fecha"));
                sugerencia.setDescripcion(rs.getString("s.descripcion"));
                
                persona.setNombre(rs.getString("p.nombre"));
                sugerencia.setPersona(persona);
                
                area.setNombre(rs.getString("a.nombre"));
                sugerencia.setArea(area);
                
                rol.setNombre(rs.getString("r.nombre"));
                sugerencia.setRol(rol);
                
                sugerencias.add(sugerencia);
            }
        } catch (Exception e) {
           
        }
        return sugerencias;
    }
    
    @Override
    public Sugerencia buscarsugerencia(int idsugerencia) {
        String consulta = " select *  "
                        + " from sugerencia "
                        + " where idsugerencia = " + idsugerencia + " ;";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                
                Persona persona = new Persona();
                Area area = new Area();
                Rol rol = new Rol();
                
                s.setIdsugerencia(rs.getInt("idsugerencia"));
                s.setFecha(rs.getString("fecha"));
                s.setDescripcion(rs.getString("descripcion"));
                persona.setIdpersona(rs.getInt("idpersona"));
                s.setPersona(persona);
                area.setIdarea(rs.getInt("idarea"));
                s.setArea(area);
                rol.setIdrol(rs.getInt("idrol"));
                s.setRol(rol);
                
            }
        } catch (Exception e) {
        }
        return s;
    }

    @Override
    public boolean agregarsugerencia(Sugerencia sugerencia) {
        String consulta = " insert into sugerencia(fecha, descripcion, idpersona, idarea, idrol)  "
                        + " values( "
                        + "'"+ sugerencia.getFecha()+"', "
                        + "'"+ sugerencia.getDescripcion()+"', "
                        + "'"+ sugerencia.getPersona().getIdpersona()+"', "
                        + "'"+ sugerencia.getArea().getIdarea()+"', "
                        + "'"+ sugerencia.getRol().getIdrol()+"') ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeQuery();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean editarsugerencia(Sugerencia sugerencia) {
        String consulta = " update sugerencia "
                        + " set "
                        + " fecha = '"+ sugerencia.getFecha()+"', "
                        + " descripcion = "+ sugerencia.getDescripcion() +", "
                        + " idpersona = '"+ sugerencia.getPersona().getIdpersona() +"', "
                        + " idarea = '"+ sugerencia.getArea().getIdarea()+"', "
                        + " idrol = '"+ sugerencia.getRol().getIdrol() +"' "
                        + " where "
                        + " idsugerencia = " + sugerencia.getIdsugerencia()+ "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
            
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminarsugerencia(int idsugerencia) {
        String consulta = " delete from sugerencia "
                        + " where "
                        + " idsugerencia = " + idsugerencia + "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);         
            pst.executeUpdate();
        } catch (Exception e) {
        }
        return false;
        
    }

 
}

