/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package atividadebaralho;

/**
 *
 * @author mathe
 */
public class Carta {
    private int numero;
    private int naipe;
    
    public Carta(int numero, int naipe){
        this.numero = numero;
        this.naipe = naipe;
    }

    @Override
    public String toString() {
        String strvalor, strnaipe = "";
        if(numero == 0)strvalor = "As";
        else if(numero == 10)strvalor = "Valete";
        else if(numero == 11)strvalor = "Dama";
        else if(numero == 12)strvalor = "Rei";
        else strvalor = String.valueOf(numero+1);
        
        if(naipe == 0) strnaipe = "Ouros";
        else if(naipe == 1) strnaipe = "Espadas";
        else if(naipe == 2) strnaipe = "Copas";
        else if(naipe == 3) strnaipe = "Paus";
        
        return "Carta{" + "numero = " + strvalor + ", naipe = " + strnaipe + '}';
    }

    
    
    /**
     * @return the numero
     */
    public int getNumero() {
        return numero;
    }

    /**
     * @param numero the numero to set
     */
    public void setNumero(int numero) {
        this.numero = numero;
    }

    /**
     * @return the naipe
     */
    public int getNaipe() {
        return naipe;
    }

    /**
     * @param naipe the naipe to set
     */
    public void setNaipe(int naipe) {
        this.naipe = naipe;
    }
    
    
}
