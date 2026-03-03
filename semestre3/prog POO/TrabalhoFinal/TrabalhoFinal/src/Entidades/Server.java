package Entidades;

public abstract class Server {
    protected String nome;
    protected String modo;

    public Server(String nome, String modo) {
        this.nome = nome;
        this.modo = modo;
    }

    public String getNome() {
        return nome;
    }

    public String getModo() {
        return modo;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setModo(String modo) {
        this.modo = modo;
    }

    @Override
    public String toString() {
        return nome + " [" + modo + "]";
    }
}
