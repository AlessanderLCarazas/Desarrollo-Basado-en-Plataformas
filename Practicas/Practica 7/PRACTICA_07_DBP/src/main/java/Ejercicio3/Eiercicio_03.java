package Ejercicio3;

public class Eiercicio_03 {
    
    //MANERA 1
    /*public static void main(String[] args){
        for (int i=1; i<21; i++){
            System.out.println("Numero: "+ i + " | Factorial: " + num_factorial(i));
        }
    }
    public static long num_factorial(int i){
        long acumulador=1;
        for (int j=1; j<i+1; j++){ 
            acumulador=acumulador*j;
        }
        return acumulador;
    }*/
    //MANERA 2
    public static void main(String[] args){
        for (int i=1; i<21; i++){
            System.out.println("Numero: "+ i + " | Factorial: " + num_factorial(i));
        }
    }
    public static long num_factorial(int i){
        if(i==0){
            return 1;
        }
        else{
            return i* num_factorial(i-1);
        }
    }
}
