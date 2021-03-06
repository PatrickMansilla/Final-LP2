
package Interfaces;
import Modelo.Sugerencia;
import java.util.List;

public interface CRUDsugerencia {
   
    public List listarsugerencia();
    public Sugerencia buscarsugerencia(int idsugerencia);
    public boolean agregarsugerencia(Sugerencia sugerencia);
    public boolean editarsugerencia(Sugerencia sugerencia);
    public boolean eliminarsugerencia(int idsugerencia); 
}
