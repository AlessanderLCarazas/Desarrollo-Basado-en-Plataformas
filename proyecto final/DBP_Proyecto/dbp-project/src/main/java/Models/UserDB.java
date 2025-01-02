package Models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Models.User;

public class UserDB {
    public UserDB() {
        
    }
    private ConnectionDB conn;

    public ConnectionDB getConn() {
        return conn;
    }

    public void setConn(ConnectionDB conn) {
        this.conn = conn;
    }

    public User verifyUser(String tarjeta, String cvv) {
        try {
            String sql = "SELECT * FROM user";
            PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if (rs.getString("tarjeta_numero").equals(tarjeta) && rs.getString("tarjeta_secreto").equals(cvv)) {
                    User user = new User(rs.getString("nombre"), rs.getString("tarjeta_numero"), rs.getString("tarjeta_secreto"), rs.getInt("id"));
                    return user;
                }
            }
        } catch (SQLException e) {
            System.out.println("ERROR: ClientDB.getClients: " + e.getMessage());
        }
        return null;
    }

    public void newUser(String username, String password) {
        try {
            String sql = "INSRT INTO users VALUES ('" + username + "', '" + password + "')";
            PreparedStatement preparedStatement = conn.getConnection().prepareStatement(sql);
            preparedStatement.executeQuery();
        } catch (SQLException e) {
            System.out.println("ERROR: ClientDB.getClients: " + e.getMessage());
        }
    }
}
