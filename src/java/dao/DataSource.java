package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource {
        

    public Connection connect() {
        
        Connection con;
        
        String url, user, pass;
        url = "jdbc:mysql://localhost:8889/BOOKSTORE";
        user = "root";
        pass = "root";
                
        try {            
            con = DriverManager.getConnection(url, user, pass);
            return con;
        } catch (SQLException t) {
            System.err.println("Falha na Conexao com o BD");
            System.err.println(t);
            System.exit(1);
            return null;
        }
                
    }

}


