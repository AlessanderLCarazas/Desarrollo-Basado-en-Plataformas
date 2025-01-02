package ejercicio_01;

public class EJERCICIO_01 {

    public static void main(String[] args) {
        persona persona_01 = new persona();
        persona_01.setDni(72637335);
        persona_01.setNombres("Alessander");
        persona_01.setPrimerApellido("Carazas");
        persona_01.setSegundoApellido("Quispe");
        persona_01.setEdad(21);
        persona_01.setDia(6);
        persona_01.setMes(10);
        persona_01.setAnio(2000);
        persona_01.setCorreoElectronico("acarazas@unsa.edu.pe");
        
        persona persona_02 = new persona (72315485,"Helen Deysi","Soncco","Maldonado",22,8,12,1995,"hsonccomal@unsa.edu.pe");
        
        persona persona_03 = new persona (954236152,"Victor Manuel","Flores","Huaman",25,9,11,2001,"vflores@unsa.edu.pe");
        
        System.out.println("El DNI de la primera persona es: " + persona_01.getDni() + " " +
                " corresponde a: " + persona_01.getNombres() + " " + persona_01.getPrimerApellido() + " " + persona_01.getSegundoApellido() 
                + ",  su edad es: " + persona_01.getEdad() + ". Fecha de Nacimiento: " + persona_01.getDia() + "/" + persona_01.getMes() + "/" + persona_01.getAnio() +
                " y su correo es: " + persona_01.getCorreoElectronico() + "."     
        );
        
        System.out.println("El DNI de la Segunda persona es: " + persona_02.getDni() + " " +
                " corresponde a: " + persona_02.getNombres() + " " + persona_02.getPrimerApellido() + " " + persona_02.getSegundoApellido() 
                + ",  su edad es: " + persona_02.getEdad() + ". Fecha de Nacimiento: " + persona_02.getDia() + "/" + persona_02.getMes() + "/" + persona_02.getAnio() +
                " y su correo es: " + persona_02.getCorreoElectronico() + "."     
        );
        
        System.out.println("El DNI de la Tercera persona es: " + persona_03.getDni() + " " +
                " corresponde a: " + persona_03.getNombres() + " " + persona_03.getPrimerApellido() + " " + persona_03.getSegundoApellido() 
                + ",  su edad es: " + persona_03.getEdad() + ". Fecha de Nacimiento: " + persona_03.getDia() + "/" + persona_03.getMes() + "/" + persona_03.getAnio() +
                " y su correo es: " + persona_03.getCorreoElectronico() + "."     
        );
    }
    
}
