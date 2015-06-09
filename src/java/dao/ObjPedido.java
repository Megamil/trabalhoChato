/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


public class ObjPedido {
    private int id_pedido;
    private int id_cliente;
    private int id_tipopagamento;
    private float valor;
    private String cliente;
    private String tipopagamento;
    /**
     * @return the id_pedido
     */
    public int getId_pedido() {
        return id_pedido;
    }

    /**
     * @param id_pedido the id_pedido to set
     */
    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    /**
     * @return the id_cliente
     */
    public int getId_cliente() {
        return id_cliente;
    }

    /**
     * @param id_cliente the id_cliente to set
     */
    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    /**
     * @return the id_tipopagamento
     */
    public int getId_tipopagamento() {
        return id_tipopagamento;
    }

    /**
     * @param id_tipopagamento the id_tipopagamento to set
     */
    public void setId_tipopagamento(int id_tipopagamento) {
        this.id_tipopagamento = id_tipopagamento;
    }

    /**
     * @return the valor
     */
    public float getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(float valor) {
        this.valor = valor;
    }

    /**
     * @return the cliente
     */
    public String getCliente() {
        return cliente;
    }

    /**
     * @param cliente the cliente to set
     */
    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    /**
     * @return the tipopagamento
     */
    public String getTipopagamento() {
        return tipopagamento;
    }

    /**
     * @param tipopagamento the tipopagamento to set
     */
    public void setTipopagamento(String tipopagamento) {
        this.tipopagamento = tipopagamento;
    }
    
}
