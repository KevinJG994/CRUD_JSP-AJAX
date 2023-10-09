package Modelo;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Kevin J
 */
public class Conexion {
    
    private String userName = "root";
    private String pass = "";
    private String className = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/comercio";
    private Connection con;
    
    public Conexion() {
        try {
            Class.forName(className);
            con = (Connection) DriverManager.getConnection(url, userName, pass);
        } catch (ClassNotFoundException e) {
            System.err.println(e.getMessage());
        } catch (SQLException esql) {
            System.err.println(esql.getMessage());
        }
    }
   
    public Connection getConnection(){
        return con;
    }
    
    
}
