package Entidades;

import java.util.ArrayList;
import java.util.List;

public class GerenciadorContas {
    private static List<Conta> todasContas = new ArrayList<>();

    public static void adicionarConta(Conta conta) {
        todasContas.add(conta);
    }

    public static List<Conta> getTodasContas() {
        return todasContas;
    }

    public static Conta buscarPorNickname(String nickname) {
        for (Conta c : todasContas) {
            if (c.getNickname().equals(nickname)) {
                return c;
            }
        }
        return null;
    }
}
