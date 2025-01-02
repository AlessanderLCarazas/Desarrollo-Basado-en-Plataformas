package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioBD {
    private BDConexion conn;
    
    public void setConexion(BDConexion conn){
        this.conn=conn;
    }
    public BDConexion getConexion(){
        return this.conn;
    }
    
    public boolean validarUsuario(String usuario, String clave){
        try{
            String sql = "SELECT * FROM usuario";
            PreparedStatement preparedStatement = conn.getConexion().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while(rs.next()){
                if(rs.getString("usuario").equals(usuario) && rs.getString("clave").equals(clave)){
                    return true;
                }
            }
        } catch (SQLException e){
            System.out.println("Error UsuarioBD.validarUsuario: " + e.getMessage());
        }
        return false;
    }
    
    public void registrarUsuario(String usuario, String clave){
        try{
            String sql = "INSERT INTO usuario VALUES ('" + usuario + "', '" + clave + "')";
            PreparedStatement preparedStatement = conn.getConexion().prepareStatement(sql);
            preparedStatement.executeQuery();
        } catch(SQLException e){
            System.out.println("Error UsuarioBD.registrarUsuario: " + e.getMessage());
        }
    }
}
