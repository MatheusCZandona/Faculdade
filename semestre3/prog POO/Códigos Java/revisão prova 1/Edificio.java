/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package revisao;
import java.util.ArrayList;
/**
 *
 * @author mathe
 */
public class Edificio extends Imovel{
    private int totalPortas;
    private boolean varanda;

    public Edificio(String cor, int andares, ArrayList portas, boolean varanda) {
        super(cor, andares, portas);
        this.varanda = varanda;
        this.totalPortas = portas.size();
    }

    @Override
    public String toString() {
        return super.toString() + "Edificio{" + "totalPortas=" + totalPortas + ", varanda=" + varanda + '}';
    }
    
    
   /**
     * @return the totalPortas
     */
    public int getTotalPortas() {
        return super.portas.size();
    }

    /**
     * @param totalPortas the totalPortas to set
     */
    public void setTotalPortas() {
        this.totalPortas = super.portas.size();
    }

    /**
     * @return the varanda
     */
    public boolean isVaranda() {
        return varanda;
    }

    /**
     * @param varanda the varanda to set
     */
    public void setVaranda(boolean varanda) {
        this.varanda = varanda;
    }
    


}
