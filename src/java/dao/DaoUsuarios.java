package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DaoUsuarios {
    
    private Connection con;
    
    public DaoUsuarios() {
        con = new connect().connect();
    }
    
    public void inserirUsuario(objUsuario obj) {
        String sql = "INSERT INTO login (usuario,senha,cpf) VALUES (?,?,?)";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, obj.getUsuario());
            stm.setString(2, obj.getSenha());
            stm.setString(3, obj.getCpf());

            stm.execute();
        } catch (SQLException e) {
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
    }
    
}
