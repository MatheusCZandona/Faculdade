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
public class Imovel {
    protected String cor;
    protected int andares;
    protected ArrayList<Porta> portas = new ArrayList<Porta>();

    public Imovel(String cor, int andares, ArrayList portas) {
        this.cor = cor;
        this.andares = andares;
        this.portas = portas;
    }

    @Override
    public String toString() {
        return "Imovel{" + "cor=" + cor + ", andares=" + andares + ", portas=" + portas + '}';
    }
    
    

    
    
}
