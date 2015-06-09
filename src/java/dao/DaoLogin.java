package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoLogin {
    
    private Connection con;
    
    public DaoLogin() {
        con = new DataSource().connect();
    }
    
    public DaoLogin(Connection newCon){
        con = newCon;
    }
    
    public void inserirLogin(ObjLogin obj) {
        String sql = "INSERT INTO login (usuario,senha) VALUES (?,?)";
        
        try {
            PreparedStatement stm = getCon().prepareStatement(sql);
            stm.setString(1, obj.getUsuario());
            stm.setString(2, obj.getSenha());
            stm.execute();
        } catch (SQLException e) {
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
    }
    
    public ArrayList<ObjLogin> logar(String chave, String senha) {

        String sql = "SELECT * FROM login WHERE usuario = ? AND senha = ?";
        ArrayList<ObjLogin> res = new ArrayList<>();

        try {      
            PreparedStatement stm = getCon().prepareStatement(sql);
            stm.setString(1, chave); 
            stm.setString(2, senha); 
            ResultSet rs = stm.executeQuery();
              while(rs.next()) {
                ObjLogin obj = new ObjLogin();
                obj.setUsuario(rs.getString(1));
                obj.setSenha(rs.getString(2));
                res.add(obj);
            }
        } catch (SQLException e) {
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
            return res;
    }

    public ArrayList<ObjLogin> Usuarios() {
        ArrayList<ObjLogin> usuarios = new ArrayList<>();
        String sql = "SELECT usuario,id_login FROM login";
        try {
            PreparedStatement stm = con.prepareStatement(sql);           
            ResultSet rs = stm.executeQuery();
            while(rs.next()) {
                ObjLogin obj = new ObjLogin();
                obj.setUsuario(rs.getString(1));
                obj.setId(rs.getInt(2));
                usuarios.add(obj);
            }
        } catch (SQLException e) {
            System.err.println("Falha no select");
            System.err.println(e);
            System.exit(1);
        }
        return usuarios;        
    }
    
        public void remover(int codigo) {
        String sql = "DELETE FROM login  WHERE id_login = ?";
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
        
      public ObjLogin buscar(int codigo) {
        String sql = "select usuario,id_login FROM login WHERE id_login = ?";
        ObjLogin obj = new ObjLogin();
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, codigo);
            ResultSet rs = stm.executeQuery();
            while(rs.next()) {
            
                obj.setUsuario(rs.getString(1));
                obj.setId(Integer.parseInt(rs.getString(2)));

                }
            
        } catch (SQLException ex) {
            System.err.println("Falha no select.");
            System.err.println(ex);
            System.exit(1);
        }
        
        return obj;
    }
      
     public void atualizarLogin(ObjLogin obj) {
        String sql = "UPDATE login set usuario = ?,senha = ? where id_login = ?";
        try {
           
            PreparedStatement stm = getCon().prepareStatement(sql);
            stm.setString(1, obj.getUsuario());
            stm.setString(2, obj.getSenha());
            stm.setInt(3,obj.getId());
            stm.execute();
        } catch (SQLException e) {
            System.err.println("Falha no update");
            System.err.println(e);
            System.exit(1);
        }
    }
    
    /**
     * @return the con
     */
    public Connection getCon() {
        return con;
    }
    
}
