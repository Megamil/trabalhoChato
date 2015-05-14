package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
    
    public ArrayList<objUsuario> logar(String chave, String senha) {

        String sql = "SELECT * FROM login WHERE usuario = ? AND senha = ?";
        ArrayList<objUsuario> res = new ArrayList<>();

        try {      
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, chave); 
            stm.setString(2, senha); 
            ResultSet rs = stm.executeQuery();
              while(rs.next()) {
                objUsuario obj = new objUsuario();
                obj.setUsuario(rs.getString(1));
                obj.setSenha(rs.getString(2));
                obj.setCpf(rs.getString(3));
                res.add(obj);
            }
        } catch (SQLException e) {
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
            return res;
    }
    
}
