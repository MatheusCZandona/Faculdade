package atividadebaralho;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Atividadebaralho {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Baralho baralho = new Baralho();

        while (true) {
            System.out.println("Digite a opcao que deseja: ");
            System.out.println("1: Adicionar Carta");
            System.out.println("2: Ver baralho");
            System.out.println("3: Embaralhar");
            System.out.println("4: Sair");

            int option = 0;

            try {
                option = sc.nextInt();
            } catch (InputMismatchException e) {
                System.out.println("Erro: apenas numeros");
                sc.nextLine(); // Limpa o buffer
                continue; // Volta para o menu
            }

            switch (option) {
                case 1:
                    try {
                        System.out.println("Digite o numero (1 a 13):");
                        int numero = sc.nextInt();
                        if (numero < 1 || numero > 13) {
                            throw new Exception("Namero invalido. Deve ser entre 1 e 13.");
                        }

                        System.out.println("Digite o naipe (1 = Ouros, 2 = Espadas, 3 = Copas, 4 = Paus):");
                        int naipe = sc.nextInt();
                        if (naipe < 1 || naipe > 4) {
                            throw new Exception("Naipe invalido! Deve ser entre 1 e 4.");
                        }

                        numero--;
                        naipe--;

                        Carta novaCarta = new Carta(numero, naipe);
                        try {
                            baralho.addCarta(novaCarta);
                            System.out.println("Carta adicionada");
                        } catch (Exception e) {
                            System.out.println(e.getMessage());
                        }

                    } catch (InputMismatchException e) {
                        System.out.println("Erro: Entrada invalida. Apenas numeros.");
                        sc.nextLine();
                    } catch (Exception e) {
                        System.out.println("Erro: " + e.getMessage());
                        sc.nextLine();
                    }
                    break;

                case 2:
                    baralho.mostraBaralho();
                    break;

                case 3:
                    baralho.Shuffle();
                    System.out.println("Embaralhado");
                    break;

                case 4:
                    System.out.println("Saindo...");
                    sc.close();
                    System.exit(0);
                    break;

                default:
                    System.out.println("Opcao invalida. Escolha entre 1 e 4.");
            }
        }

    }
}
