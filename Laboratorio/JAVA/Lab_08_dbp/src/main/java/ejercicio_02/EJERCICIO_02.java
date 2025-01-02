package ejercicio_02;

public class EJERCICIO_02 {

    public static void main(String[] args) {
        punto punto_01 = new punto();
        punto_01.setX(2);
        punto_01.setY(3);
        
        punto punto_02 = new punto(5, 7);  
        
        punto punto_03 = new punto(2, 3);
        
        if(punto_01.igual(punto_02)){
            System.out.println("El punto 1 SI es igual al punto 2.");
        } else{
            System.out.println("El punto 1 NO es igual al punto 2.");
        }
        
        if(punto_01.igual(punto_03)){
            System.out.println("El punto 1 SI es igual al punto 3.");
        } else{
            System.out.println("El punto 1 NO no es igual al punto 3.");
        }
        
        System.out.println("La distancia entre el punto 1 y 2 es " + punto_01.distancia_euclidiana(punto_02));
        System.out.println("La distancia entre el punto 2 y 3 es " + punto_02.distancia_euclidiana(punto_03));
        System.out.println("La distancia del punto 1 al origen es " + punto_01.distancia_punto_origen());
        System.out.println("La distancia del punto 2 al origen es " + punto_02.distancia_punto_origen());
        System.out.println("La distancia del punto 3 al origen es " + punto_03.distancia_punto_origen());
    }
    
}
