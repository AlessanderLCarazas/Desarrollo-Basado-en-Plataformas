package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class ClienteBD {
    private BDConexion conn;
    
    public void setConexion(BDConexion conn){
        this.conn=conn;
    }
    
    public BDConexion getConexion(){
        return this.conn;
    }
    
    public List<Cliente> getClientes(){
        try{
            String sql="SELECT * FROM clientes";
            PreparedStatement preparedStatement = conn.getConexion().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            List<Cliente> list= new LinkedList<>();
            Cliente cliente;
            while (rs.next()){
                cliente = new Cliente ();
                cliente.setDni(rs.getString("dni"));
                cliente.setNombres(rs.getString("nombres"));
                cliente.setApellidos(rs.getString("apellidos"));
                cliente.setEmail(rs.getString("email"));
                cliente.setTelefono(rs.getString("telefono"));
                list.add(cliente);
            }
            return list;
        } catch(SQLException e){
            System.out.println("Error ClienteDB.getClientes: " + e.getMessage());
            return null;
        }
    }
    
    public void insClientes(String dni, String nombres, String apellidos, String email, String telefono){
        try{
            String sql = "INSERT INTO clientes VALUES (" + dni + ", '" + nombres + "', '" + apellidos + "', '" + email + "', '" + telefono + "')";
            PreparedStatement preparedStatement = conn.getConexion().prepareStatement(sql);
            preparedStatement.execute();
        } catch (SQLException e){
            System.out.println("Error ClienteBD.insClientes: "+ e.getMessage());
        }
    }
}
