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


public class DaoTipoPagamento {
    public Connection con;
    
    public DaoTipoPagamento(){
        con = new DataSource().connect();
    }
    
    public ArrayList <ObjTipoPagamento> selecionarPagamentos(){
        String sql = "SELECT * FROM tipopagamento";
        ArrayList <ObjTipoPagamento> resultado = new ArrayList();
        ObjTipoPagamento obj;
        try{
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet resultadoQuery = stm.executeQuery();
            while(resultadoQuery.next()){
                obj = new ObjTipoPagamento();
                obj.setDescricao(resultadoQuery.getString("descricao"));
                obj.setId_tipoPagamento(resultadoQuery.getInt("id_tipopagamento"));
                resultado.add(obj);
            }
            return resultado;
        } catch(SQLException e){
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
        return null;
    }
}
