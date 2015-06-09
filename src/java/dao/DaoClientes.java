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


public class DaoClientes {
    private Connection con;
    
    public DaoClientes() {
        con = new DataSource().connect();
    }
    
    public void inserirClientes(ObjCliente obj){
        String sql = "INSERT INTO cliente(nome, cpf, rg, data_nascimento, "
                + "endereco, bairro, municipio, uf, telefone_res, telefone_cel, "
                + "email) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try{
            PreparedStatement stm = getCon().prepareStatement(sql);
            String a = obj.getData_nascimento();
            stm.setString(1,obj.getNome());
            stm.setString(2,obj.getCpf());
            stm.setString(3,obj.getRg());
            stm.setString(4,obj.getData_nascimento());
            stm.setString(5,obj.getEndereco());
            stm.setString(6,obj.getBairro());
            stm.setString(7,obj.getMunicipio());
            stm.setString(8,obj.getUf());
            stm.setString(9,obj.getTelefone_res());
            stm.setString(10,obj.getTelefone_res());
            stm.setString(11,obj.getEmail());
            stm.execute();
        }catch(SQLException e){
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
    }
    
    public ObjCliente pesquisarClientes(String cpf){
        String sql = "SELECT * FROM cliente WHERE cpf like ?";
         ObjCliente cliente = null;
        try{
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, cpf);
            ResultSet resultado = stm.executeQuery();
            if(resultado.next()){
                cliente = new ObjCliente();
                cliente.setId_cliente(resultado.getInt("id_cliente"));
                cliente.setNome(resultado.getString("nome"));
                cliente.setCpf(resultado.getString("cpf"));
                cliente.setRg(resultado.getString("rg"));
                cliente.setData_nascimento(resultado.getString("data_nascimento"));
                cliente.setEndereco(resultado.getString("endereco"));
                cliente.setBairro(resultado.getString("bairro"));
                cliente.setMunicipio(resultado.getString("municipio"));
                cliente.setUf(resultado.getString("uf"));
                cliente.setTelefone_res(resultado.getString("telefone_res"));
                cliente.setTelefone_cel(resultado.getString("telefone_cel"));
                cliente.setEmail(resultado.getString("email"));
            }
        } catch(SQLException e){
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        } catch(Exception e){
            System.err.println("Falha na insercao");
            System.err.println(e);
            System.exit(1);
        }
        
        return cliente;
    }
    
    public void atualizaCliente(ObjCliente novo){
        String sql = "UPDATE cliente "
                + "SET nome = ?, cpf = ?, rg = ?, data_nascimento = ?, "
                + "endereco = ?, bairro = ?, municipio = ?, uf = ?, "
                + "telefone_res = ?, telefone_cel = ?, email = ? "
                + "WHERE id_cliente = ?";
        try{
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, novo.getNome());
            stm.setString(2, novo.getCpf());
            stm.setString(3, novo.getRg());
            stm.setString(4, novo.getData_nascimento());
            stm.setString(5, novo.getEndereco());
            stm.setString(6, novo.getBairro());
            stm.setString(7, novo.getMunicipio());
            stm.setString(8, novo.getUf());
            stm.setString(9, novo.getTelefone_res());
            stm.setString(10, novo.getTelefone_cel());
            stm.setString(11, novo.getEmail());
            stm.setInt(12, novo.getId_cliente());
            stm.execute();
            
            con.close();
            
        } catch(SQLException e){
            System.err.println("Falha na insercao");
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
