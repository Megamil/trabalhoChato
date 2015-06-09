/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


public class ObjDetalhesDoPedido {
    private int id_pedido;
    private int id_livro;
    private int quantidade;
    private String Livro;

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
     * @return the id_livro
     */
    public int getId_livro() {
        return id_livro;
    }

    /**
     * @param id_livro the id_livro to set
     */
    public void setId_livro(int id_livro) {
        this.id_livro = id_livro;
    }

    /**
     * @return the quantidade
     */
    public int getQuantidade() {
        return quantidade;
    }

    /**
     * @param quantidade the quantidade to set
     */
    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    /**
     * @return the Livro
     */
    public String getLivro() {
        return Livro;
    }

    /**
     * @param Livro the Livro to set
     */
    public void setLivro(String Livro) {
        this.Livro = Livro;
    }
}
