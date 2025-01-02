/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class TransactionDB {
    public TransactionDB() {}
    
    private ConnectionDB conn;

    public ConnectionDB getConn() {
        return conn;
    }

    public void setConn(ConnectionDB conn) {
        this.conn = conn;
    }
    
    public List<Transaction> getTransaction(int id) {
        try {
            String sql = "SELECT * FROM transaccion";
            PreparedStatement preparedStatement = this.conn.getConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            List<Transaction> transacciones = new LinkedList();
            while (rs.next()) {
                if ((rs.getInt("id_recibido") == id) || (rs.getInt("id_enviado") == id)) {
                    Transaction _transaccion = new Transaction(rs.getInt("id"), rs.getString("tipo"), rs.getInt("id_recibido"), rs.getInt("id_enviado"), rs.getDouble("monto"), rs.getString("descripcion"), rs.getDate("fecha"));
                    transacciones.add(_transaccion);
                }
            }
            return transacciones;
        } catch (SQLException e) {
            System.out.println("ERROR: ClientDB.getClients: " + e.getMessage());
        }
        return null;
    }
    
    public boolean setTransaction(Transaction data) {
        try {
            String sql = "INSERT INTO `transaccion`(`tipo`, `id_recibido`, `id _enviado`, `monto`, `descripcion`)  VALUES ('" + data.getTipo() + "', '" + data.getRecibido() + "', '" + data.getEnviado() + "', '" + data.getMonto() + "', '" + data.getDescription()+ "'" + ")";
            String sqlRecibido = "UPDATE `transaccion` SET `saldo`+='" + data.getMonto() + "' WHERE " + data.getRecibido();
            String sqlEnviado = "UPDATE `transaccion` SET `saldo`-='" + data.getMonto() + "' WHERE " + data.getEnviado();
            PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
            PreparedStatement preparedStatementRecibido = conn.getConnection().prepareStatement(sqlRecibido);
            PreparedStatement preparedStatementEnviado = conn.getConnection().prepareStatement(sqlEnviado);

            preparedStatement.execute();
            preparedStatementRecibido.execute();
            preparedStatementEnviado.execute();
        } catch (SQLException e) {
            System.out.println("ERROR: ClientDB.getClients: " + e.getMessage());
        }
        return false;
    }
}
