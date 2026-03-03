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
public class Casa extends Imovel{
    private int totalPortas;
    private boolean jardin;

    public Casa(String cor, int andares, ArrayList portas, boolean jardin){
        super(cor, andares, portas);
        this.jardin = jardin;
        this.totalPortas = portas.size();
    }

    @Override
    public String toString() {
        return super.toString() + "Casa{" + "totalPortas=" + totalPortas + ", jardin=" + jardin + '}';
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
     * @return the jardin
     */
    public boolean isJardin() {
        return jardin;
    }

    /**
     * @param jardin the jardin to set
     */
    public void setJardin(boolean jardin) {
        this.jardin = jardin;
    }
    
    
    
    
}
