/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoDetalhesDoPedido {
    
   public Connection con;
    
    public DaoDetalhesDoPedido(){
        con = new DataSource().connect();
    }
    
     public ArrayList<ObjDetalhesDoPedido> Detalhespedidos(int pedido) {
        ArrayList<ObjDetalhesDoPedido> detalhes = new ArrayList<>();
        String sql = "SELECT id_pedido,quantidade,titulo FROM detalhesdopedido dp inner join livro  l on dp.id_livro = l.id_livro\n" +
        "where id_pedido = ?;";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, pedido);
            ResultSet rs = stm.executeQuery();
            while(rs.next()) {
                ObjDetalhesDoPedido obj = new ObjDetalhesDoPedido();
                obj.setLivro(rs.getString(3));
                obj.setId_pedido(rs.getInt(1));
                obj.setQuantidade(rs.getInt(2));
                detalhes.add(obj);
            }
        } catch (SQLException e) {
            System.err.println("Falha no select");
            System.err.println(e);
            System.exit(1);
        }
        return detalhes; 
     }
}
