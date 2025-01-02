package ejercicio_02;

public class punto {
    private int x;
    private int y;
    
    public punto() {}
    
    public punto(int x,int y){
        this.x = x;
        this.y = y;
    }
    
    public int getX(){
        return this.x;
    }
    
    public void setX(int x){
        this.x = x;
    }
    
    public int getY(){
        return this.y;
    }
    
    public void setY(int y){
        this.y = y;
    }
    
    public boolean igual(punto p){
        return this.x == p.x && this.y == p.y;
    }
    
    public double distancia_euclidiana(punto p){
        double res = Math.sqrt(Math.pow((p.x-this.x),2)+Math.pow((p.y-this.y),2));
        return res;
    }
    
    public double distancia_punto_origen(){
        double res = Math.sqrt(Math.pow((0-this.x),2)+Math.pow((0-this.y),2));
        return res;
    }
}
