package Models;

import java.sql.*;

public class ConnectionDB {
    static String bd = "proyecto-dbp";
    static String username = "admin";
    static String password = "123456";
    static String host = "jdbc:mariadb://localhost/" + bd;

    Connection conn = null;

    public ConnectionDB() {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            this.conn = DriverManager.getConnection(host, username, password);
            if (conn != null) {
                System.out.println("Connection database: " + conn + "; OK");
            }
        } catch (SQLException e) {
            System.out.println("Exception connection: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.out.println("Exception driver: " + e.getMessage());
        }
    }

    public Connection getConnection() {
        return this.conn;
    }

    public void desconnection() {
        System.out.println("Closing databse: " + conn + "; OK");
        if (this.conn != null) {
            try {
                this.conn.close();
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
    }
}
