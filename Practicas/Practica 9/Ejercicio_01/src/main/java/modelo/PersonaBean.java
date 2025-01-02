package modelo;

import java.io.Serializable;

public class PersonaBean implements Serializable{
    private String primerNombre, segundoNombre, primerApellido, segundoApellido;
    
    public void setPrimerNombre(String primerNombre){
        this.primerNombre=primerNombre;
    }
    public String getPrimerNombre(){
        return primerNombre;
    }
    
    public void setSegundoNombre(String segundoNombre){
        this.segundoNombre=segundoNombre;
    }
    public String getSegundoNombre(){
        return segundoNombre;
    }
    
    public void setPrimerApellido(String primerApellido){
        this.primerApellido=primerApellido;
    }
    public String getPrimerApellido(){
        return primerApellido;
    }
    
    public void setSegundoApellido(String segundoApellido){
        this.segundoApellido=segundoApellido;
    }
    public String getSegundoApellido(){
        return segundoApellido;
    }
    
    public boolean validacion(){
        if (primerNombre.equals("Alessander") && segundoNombre.equals("Jesus") && primerApellido.equals("Carazas") && segundoApellido.equals("Quispe")){
            return true;
        } else{
            return false;
        }
    }
}
