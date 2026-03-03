/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package atividadebaralho;

import java.util.Random;

/**
 *
 * @author mathe
 */
public class Baralho {

    private Carta cartas[] = new Carta[52];
    private boolean cartaadd[][] = new boolean[13][4];
    private int index = 0;

    public void addCarta(Carta novacarta) throws Exception {

        if (this.cartaadd[novacarta.getNumero()][novacarta.getNaipe()]) {
            throw new Exception("Carta existente");
        } else if (this.index >= 52) {
            throw new Exception("Baralho cheio");
        }

        this.cartaadd[novacarta.getNumero()][novacarta.getNaipe()] = true;
        cartas[this.index] = novacarta;
        this.index++;

    }

    public void Shuffle() {
        Random rand = new Random();
        for(int i = this.index - 1; i > 0; i--) {
            int j = rand.nextInt(i + 1);

            Carta temp = cartas[i];
            cartas[i] = cartas[j];
            cartas[j] = temp;
        }
    }

    public void mostraBaralho() {
        System.out.print("Cartas -> { ");
        for (int i = 0; i < this.index; i++) {
            System.out.println(this.cartas[i]);
        }
        System.out.println("}");
    }

    /**
     * @return the cartas
     */
    public Carta[] getCartas() {
        return cartas;
    }

    /**
     * @param cartas the cartas to set
     */
    public void setCartas(Carta[] cartas) {
        this.cartas = cartas;
    }

    /**
     * @return the cartaadd
     */
    public boolean[][] getCartaadd() {
        return cartaadd;
    }

    /**
     * @param cartaadd the cartaadd to set
     */
    public void setCartaadd(boolean[][] cartaadd) {
        this.cartaadd = cartaadd;
    }

}
