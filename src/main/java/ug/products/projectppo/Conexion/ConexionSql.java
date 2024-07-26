package ug.products.projectppo.Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseDatos {
    private static String servidor = "jdbc:mysql://localhost/pprogramacion";
    private static String user = "root";
    private static String pass = "";
    private static String driver = "com.mysql.cj.jdbc.Driver"; // Asegúrate de usar el driver correcto
    private Connection conexion;

    public ConexionSql() {
        try {
            Class.forName(driver);
            conexion = DriverManager.getConnection(servidor, user, pass);
            
        } catch (ClassNotFoundException e) {

        } catch (SQLException e) {

        }
    }

    public Connection getConexion() {
        return conexion;
    }
}
