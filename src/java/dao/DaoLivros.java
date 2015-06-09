package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoLivros {
    
    private Connection con;
    
    public DaoLivros() {
        con = new DataSource().connect();
    }
    
    public void inserirLivro(ObjLivro obj) {
        String sql = "INSERT INTO livro (titulo,autor,isbn,sinopse,valor,id_categoria, caminho_imagem) VALUES (?,?,?,?,?,?,?)";
        try {
            PreparedStatement stm = getCon().prepareStatement(sql);
            stm.setString(1, obj.getTitulo());
            stm.setString(2, obj.getAutor());
            stm.setString(3, obj.getISBN());
            stm.setString(4, obj.getSinopse());
            stm.setDouble(5, obj.getValor());
            stm.setInt(6, obj.getCategoria());
            stm.setString(7, obj.getCaminho_imagem());
            stm.execute();
        } catch (SQLException e) {
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
    }
    
        public void atualizarLivro(ObjLivro obj) {
        String sql = "UPDATE livro set titulo = ?,autor = ?,isbn = ?,sinopse = ?,valor = ?,id_categoria = ?, caminho_imagem = ? where id_livro = ?";
        try {
            PreparedStatement stm = getCon().prepareStatement(sql);
            stm.setString(1, obj.getTitulo());
            stm.setString(2, obj.getAutor());
            stm.setString(3, obj.getISBN());
            stm.setString(4, obj.getSinopse());
            stm.setDouble(5, obj.getValor());
            stm.setInt(6, obj.getCategoria());
            stm.setString(7, obj.getCaminho_imagem());
            stm.setInt(8,obj.getId());
            stm.execute();
        } catch (SQLException e) {
            System.err.println("Falha no update");
            System.err.println(e);
            System.exit(1);
        }
    }
    
    public ResultSet localizarLivros(int categoria){
        ResultSet resultado;
        String sql = "SELECT * FROM livro WHERE id_categoria = ?";
        try{
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1,categoria);
            resultado = stm.executeQuery();
            return resultado;
        } catch(SQLException e){
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
        return null;
    }
    
        public ArrayList<ObjLivro> Livros() {
        ArrayList<ObjLivro> livros = new ArrayList<>();
        String sql = "SELECT titulo,autor,isbn,sinopse,valor,id_categoria,id_livro,caminho_imagem FROM livro";
        try {
            PreparedStatement stm = con.prepareStatement(sql);           
            ResultSet rs = stm.executeQuery();
            while(rs.next()) {
                ObjLivro obj = new ObjLivro();
                obj.setTitulo(rs.getString(1));
                obj.setAutor(rs.getString(2));
                obj.setISBN(rs.getString(3));
                obj.setSinopse(rs.getString(4));
                obj.setValor(rs.getDouble(5));
                obj.setCategoria(rs.getInt(6));
                obj.setId(rs.getInt(7));
                obj.setCaminho_imagem(rs.getString(8));
                livros.add(obj);
            }
        } catch (SQLException e) {
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
        return livros;        
    }
        
        public void remover(int codigo) {
        String sql = "DELETE FROM livro  WHERE id_livro = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, codigo);
            stm.execute();
        } catch (SQLException ex) {
            System.err.println("Falha na remoção.");
            System.err.println(ex);
            System.exit(1);
        }
        System.out.println("Remoção Efetuada!");
    }
        
      public ObjLivro buscar(int codigo) {
        String sql = "select titulo,autor,isbn,sinopse,valor,id_categoria,id_livro,caminho_imagem FROM livro  WHERE id_livro = ?";
        ObjLivro obj = new ObjLivro();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, codigo);
            ResultSet rs = stm.executeQuery();
            while(rs.next()) {
            
                obj.setTitulo(rs.getString(1));
                obj.setAutor(rs.getString(2));
                obj.setISBN(rs.getString(3));
                obj.setSinopse(rs.getString(4));
                obj.setValor(rs.getDouble(5));
                obj.setCategoria(rs.getInt(6));
                obj.setId(rs.getInt(7));
                obj.setCaminho_imagem(rs.getString(8));
                }
            
        } catch (SQLException ex) {
            System.err.println("Falha.");
            System.err.println(ex);
            System.exit(1);
        }
        
        return obj;
    }

    /**
     * @return the con
     */
    public Connection getCon() {
        return con;
    }
           
}
