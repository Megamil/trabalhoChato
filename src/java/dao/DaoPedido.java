/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoPedido {
    public Connection con;
    
    public DaoPedido(){
        con = new DataSource().connect();
    }
    
    public void inserirPedido(ObjPedido novo, ArrayList <ObjDetalhesDoPedido> detalhes){
        String sql;
        int id = novo.getId_cliente();
        PreparedStatement stm;
        ResultSet resultado;
        try{
            if(id == -1){
                sql = "SELECT MAX(id_cliente) FROM cliente";
                stm = con.prepareStatement(sql);
                resultado = stm.executeQuery();
                if(resultado.next()){
                    id = resultado.getInt(1);
                }
            }
            sql = "INSERT INTO pedido(id_cliente,id_tipopagamento,valor) values(?,?,?)";
            stm = con.prepareStatement(sql);
            stm.setInt(1,id);
            stm.setInt(2, novo.getId_tipopagamento());
            stm.setFloat(3, novo.getValor());
            System.out.println(stm);
            stm.execute();
            sql = "SELECT MAX(id_pedido) from pedido";
            stm = con.prepareStatement(sql);
            resultado = stm.executeQuery();
            if(resultado.next()){
                id = resultado.getInt(1);
            }
            sql = "INSERT INTO detalhesdopedido(id_pedido,id_livro,quantidade) values(?,?,?)";
            for(ObjDetalhesDoPedido obj:detalhes){
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);
                stm.setInt(2, obj.getId_livro());
                stm.setInt(3, obj.getQuantidade());
                stm.execute();
            }
        } catch(SQLException e){
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
    }
    
        public ArrayList<ObjPedido> pedidos() {
        ArrayList<ObjPedido> pedido = new ArrayList<>();
        String sql = "SELECT nome,id_pedido,valor,descricao FROM pedido p\n" +
        "left join tipopagamento tp on tp.id_tipopagamento = p.id_tipopagamento\n" +
        "left join cliente c on c.id_cliente = p.id_cliente;";
        try {
            PreparedStatement stm = con.prepareStatement(sql);           
            ResultSet rs = stm.executeQuery();
            while(rs.next()) {
                ObjPedido obj = new ObjPedido();
                obj.setCliente(rs.getString(1));
                obj.setId_pedido(rs.getInt(2));
                obj.setValor(rs.getFloat(3));
                obj.setTipopagamento(rs.getString(4));
                pedido.add(obj);
            }
        } catch (SQLException e) {
            System.err.println("Falha no select");
            System.err.println(e);
            System.exit(1);
        }
        return pedido;        
    }
    
}
