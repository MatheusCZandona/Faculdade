package Entidades;

public class ServerSingle extends Server {
    private Conta proprietario;

    public ServerSingle(String nome, String modo, Conta proprietario) {
        super(nome, modo);
        this.proprietario = proprietario;
    }

    public Conta getProprietario() {
        return proprietario;
    }

    public void setProprietario(Conta proprietario) {
        this.proprietario = proprietario;
    }
}
