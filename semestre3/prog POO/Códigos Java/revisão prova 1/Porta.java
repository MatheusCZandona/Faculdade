/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package revisao;

/**
 *
 * @author mathe
 */
public class Porta {
    private boolean aberta;
    private String cor;
    private double dx;
    private double dy;
    private double dz;

    public boolean estaAberta(){
        if(this.aberta) return true;
        else return false;
    }
    
    public boolean Abre(boolean aberta){
        if(!this.aberta){
            this.aberta = true;
            return true;
        }
        return false;
    }
    
    public boolean Fecha(boolean aberta){
        if(this.aberta){
            this.aberta =  false;
            return true;
        }
        return false;
    }
    
    public boolean pinta(String cor){
        if(cor == null ? this.cor == "Branca" : cor.equals(this.cor)) return false;
        
        this.cor = cor;
        return true;
    }

    @Override
    public String toString() {
        String a;
        if(aberta)a = "sim";
        else a = "nao";
        return "Porta{" + "aberta=" + a + ", cor=" + cor + ", dx=" + dx + ", dy=" + dy + ", dz=" + dz + '}';
    }
    
    /**
     * @return the aberta
     */
    public boolean isAberta() {
        return aberta;
    }

    /**
     * @param aberta the aberta to set
     */
    public void setAberta(boolean aberta) {
        this.aberta = aberta;
    }

    /**
     * @return the cor
     */
    public String getCor() {
        return cor;
    }

    /**
     * @param cor the cor to set
     */
    public void setCor(String cor) {
        this.cor = cor;
    }

    /**
     * @return the dx
     */
    public double getDx() {
        return dx;
    }

    /**
     * @param dx the dx to set
     */
    public void setDx(double dx) {
        this.dx = dx;
    }

    /**
     * @return the dy
     */
    public double getDy() {
        return dy;
    }

    /**
     * @param dy the dy to set
     */
    public void setDy(double dy) {
        this.dy = dy;
    }

    /**
     * @return the dz
     */
    public double getDz() {
        return dz;
    }

    /**
     * @param dz the dz to set
     */
    public void setDz(double dz) {
        this.dz = dz;
    }
    
    
}
