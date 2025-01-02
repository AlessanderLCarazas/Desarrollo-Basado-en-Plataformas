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

/**
 *
 * @author fhuaquisto
 */
public class AccountDB {
    public AccountDB() {}
    
    private ConnectionDB conn;

    public ConnectionDB getConn() {
        return conn;
    }

    public void setConn(ConnectionDB conn) {
        this.conn = conn;
    }
    
    public Account getAccount(int id) {
        try {
            String sql = "SELECT * FROM cuenta";
            PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if (rs.getInt("id") == id) {
                    Account account = new Account(rs.getString("tipo"), rs.getString("numero"), rs.getDouble("saldo"), rs.getInt("id_tarjeta"));
                    return account;
                }
            }
        } catch (SQLException e) {
            System.out.println("ERROR: ClientDB.getClients: " + e.getMessage());
        }
        return null;
    }
    
    public int getAccount(String tarjeta) {
        try {
            String sql = "SELECT * FROM cuenta";
            PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if (rs.getString("numero").equals(tarjeta)) {
                    return rs.getInt("id");
                }
            }
        } catch (SQLException e) {
            System.out.println("ERROR: ClientDB.getClients: " + e.getMessage());
        }
        return 0;
    }
    
    public List<Account> getAccounts(int id) {
        try {
            String sql = "SELECT * FROM cuenta";
            PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            List<Account> cuentas = new LinkedList();
            while (rs.next()) {
                if (rs.getInt("id_tarjeta") == id) {
                    Account _cuenta = new Account(rs.getString("tipo"), rs.getString("numero"), rs.getDouble("saldo"), rs.getInt("id"));
                    cuentas.add(_cuenta);
                }
            }
            return cuentas;
        } catch (SQLException e) {
            System.out.println("ERROR: ClientDB.getClients: " + e.getMessage());
        }
        return null;
    }
}
