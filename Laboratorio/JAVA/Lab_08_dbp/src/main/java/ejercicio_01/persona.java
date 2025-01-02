package ejercicio_01;

public class persona {
    private int DNI;
    private String nombres;
    private String primerApellido;
    private String segundoApellido;
    private int edad;
    private int dia;
    private int mes;
    private int anio;
    private String correoElectronico;
    
    public persona(){}
    
    public persona(int DNI, String nombres, String primerApellido, String segundoApellido, int edad, int dia, int mes, int anio, String correoElectronico){
        this.DNI=DNI;
        this.nombres=nombres;
        this.primerApellido=primerApellido;
        this.segundoApellido=segundoApellido;
        this.edad=edad;
        this.dia=dia;
        this.mes=mes;
        this.anio=anio;
        this.correoElectronico=correoElectronico;
    }
    
    public void setDni(int DNI){
        this.DNI=DNI;
    }
    
    public int getDni(){
        return DNI;
    }
    
    public void setNombres(String nombres){
        this.nombres=nombres;
    } 
    
    public String getNombres(){
        return nombres;
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
    
    public void setEdad(int edad){
        this.edad=edad;
    }
    
    public int getEdad(){
        return edad;
    }
    
    public void setDia(int dia){
        this.dia=dia;
    }
    
    public int getDia(){
        return dia;
    }    
    
    public void setMes(int mes){
        this.mes=mes;
    }
    
    public int getMes(){
        return mes;
    }  
    
    public void setAnio(int anio){
        this.anio=anio;
    }
    
    public int getAnio(){
        return anio;
    }    
    
    public void setCorreoElectronico(String correoElectronico){
        this.correoElectronico=correoElectronico;
    }
    
    public String getCorreoElectronico(){
        return correoElectronico;
    }  
}
