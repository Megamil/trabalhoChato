package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dao {
    
    private Connection con;
    
    public Dao() {
        con = new connect().connect();
    }
    
    public void inserirLivro(objLivro obj) {
        String sql = "INSERT INTO livro (titulo,autor,isbn,sinopse,valor,id_categoria) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, obj.getTitulo());
            stm.setString(2, obj.getAutor());
            stm.setString(3, obj.getISBN());
            stm.setString(4, obj.getSinopse());
            stm.setDouble(5, obj.getValor());
            stm.setInt(6, obj.getCategoria());
            stm.execute();
        } catch (SQLException e) {
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
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
