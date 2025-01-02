package Ejercicio2;

public class Ejercicio_02 {
    
    public static void main(String[] args){
        for (int i=1; i<16; i++){
            if(esPar(i)){
                System.out.println("El numero: "+ i + " es PAR.");
            }
            else{
                System.out.println("El numero: "+ i + " es IMPAR.");
            }
        }
    }
    
    public static boolean esPar(int i){
        if (i%2==0){
            return true;
        }
        else{
            return false;
        }
    }
}
