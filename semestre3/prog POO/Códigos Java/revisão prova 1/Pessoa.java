/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package revisao;

/**
 *
 * @author mathe
 */
public class Pessoa {
    private String nome;
    private Data dia_aniversario;
    private int idade;

    public boolean fazAniversario(Data data){
        if(this.dia_aniversario.getDia() == data.getDia() && this.dia_aniversario.getMes() == data.getMes()){
            idade++;
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return "Pessoa{" + "nome=" + nome + ", idade=" + idade + '}';
    }
    
    
    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the idade
     */
    public int getIdade() {
        return idade;
    }

    /**
     * @param idade the idade to set
     */
    public void setIdade(int idade) {
        this.idade = idade;
    }

    /**
     * @return the aniversario
     */
    public Data getAniversario() {
        return dia_aniversario;
    }

    /**
     * @param aniversario the aniversario to set
     */
    public void setAniversario(Data aniversario) {
        this.dia_aniversario = aniversario;
    }
    
    
}
