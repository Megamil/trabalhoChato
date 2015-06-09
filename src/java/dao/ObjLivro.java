package dao;

public class ObjLivro {
    
    private int id;
    private String Titulo;
    private String Autor;
    private String ISBN;
    private String Sinopse;
    private String Caminho_imagem;
    private double Valor;
    private int Categoria;
    
    /**
     * @return the Titulo
     */
    public String getTitulo() {
        return Titulo;
    }

    /**
     * @param Titulo the Titulo to set
     */
    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    /**
     * @return the Autor
     */
    public String getAutor() {
        return Autor;
    }

    /**
     * @param Autor the Autor to set
     */
    public void setAutor(String Autor) {
        this.Autor = Autor;
    }

    /**
     * @return the ISBN
     */
    public String getISBN() {
        return ISBN;
    }

    /**
     * @param ISBN the ISBN to set
     */
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    /**
     * @return the Sinopse
     */
    public String getSinopse() {
        return Sinopse;
    }

    /**
     * @param Sinopse the Sinopse to set
     */
    public void setSinopse(String Sinopse) {
        this.Sinopse = Sinopse;
    }

    /**
     * @return the Valor
     */
    public double getValor() {
        return Valor;
    }

    /**
     * @param Valor the Valor to set
     */
    public void setValor(double Valor) {
        this.Valor = Valor;
    }

    /**
     * @return the Categoria
     */
    public int getCategoria() {
        return Categoria;
    }

    /**
     * @param Categoria the Categoria to set
     */
    public void setCategoria(int Categoria) {
        this.Categoria = Categoria;
    }

    /**
     * @return the Caminho_imagem
     */
    public String getCaminho_imagem() {
        return Caminho_imagem;
    }

    /**
     * @param Caminho_imagem the Caminho_imagem to set
     */
    public void setCaminho_imagem(String Caminho_imagem) {
        this.Caminho_imagem = Caminho_imagem;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
                 
}
