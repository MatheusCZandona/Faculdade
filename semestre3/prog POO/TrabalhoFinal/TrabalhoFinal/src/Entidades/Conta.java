package Entidades;

import java.util.ArrayList;

public class Conta {
    private String nickname;
    private String nome;
    private ArrayList<ServerSingle> mundosSing;
    private ArrayList<ServerMulti> mundosMult;

    public Conta(String nickname, String nome) {
        this.nickname = nickname;
        this.nome = nome;
        this.mundosSing = new ArrayList<>();
        this.mundosMult = new ArrayList<>();
    }

    public String getNickname() { return nickname; }
    public String getNome() { return nome; }

    public ArrayList<ServerSingle> getMundosSing() {
        return mundosSing;
    }

    public ArrayList<ServerMulti> getMundosMult() {
        return mundosMult;
    }

    public void adicionarMundoSing(ServerSingle mundo) {
        mundosSing.add(mundo);
    }

    public void adicionarMundoMulti(ServerMulti mundo) {
        mundosMult.add(mundo);
    }

    public void buscarTodasContas(){
        
    }
    
    @Override
    public String toString() {
        return nickname + " (" + nome + ")";
    }
}
