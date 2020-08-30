
package pe.edu.unmsm.sistemas;

import java.util.ArrayList;


public class Articulos {
    private static Articulos catalogo;
    
    private ArrayList<Articulo> articulos = null;
    
    private Articulos(){
        articulos = new ArrayList<>();
        articulos.add( new Articulo("001", "Arroz", 10, 10.5 ) );
        articulos.add( new Articulo("002", "Azucar", 10, 10.5 ) );
        articulos.add( new Articulo("003", "Canela", 10, 10.5 ) );
        articulos.add( new Articulo("004", "Sal", 10, 10.5 ) );
        articulos.add( new Articulo("005", "Papa", 10, 10.5 ) );
    }
    
    public static Articulos Singleton(){
        if(catalogo == null){
            catalogo = new Articulos();
        }
        return catalogo;
    }

    public ArrayList<Articulo> getArticulos() {
        return articulos;
    }

    public void setArticulos(ArrayList<Articulo> articulos) {
        this.articulos = articulos;
    }
    
}
