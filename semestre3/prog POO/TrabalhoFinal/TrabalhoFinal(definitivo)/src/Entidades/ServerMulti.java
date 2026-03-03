package Entidades;

import java.util.ArrayList;

public class ServerMulti extends Server {
    private ArrayList<Conta> proprietarios;

    public ServerMulti(String nome, String modo) {
        super(nome, modo);
        this.proprietarios = new ArrayList<>();
    }

    public ArrayList<Conta> getProprietarios() {
        return proprietarios;
    }

    public void adicionarProprietario(Conta proprietario) {
        proprietarios.add(proprietario);
    }
}
