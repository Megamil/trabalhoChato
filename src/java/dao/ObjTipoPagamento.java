/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

public class ObjTipoPagamento {
    private int id_tipoPagamento;
    private String descricao;

    /**
     * @return the id_tipoPagamento
     */
    public int getId_tipoPagamento() {
        return id_tipoPagamento;
    }

    /**
     * @param id_tipoPagamento the id_tipoPagamento to set
     */
    public void setId_tipoPagamento(int id_tipoPagamento) {
        this.id_tipoPagamento = id_tipoPagamento;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
