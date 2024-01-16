import 'dart:io';
import 'package:imc_calc/pessoa.dart';

void main(List<String> arguments) {
  try {
    print("Bem vindo ao imc_calc!");

    print("Digite o nome da pessoa: ");
    String nome = stdin.readLineSync()!;

    print("Digite o peso em kg de $nome (Ex. 100): ");
    double peso = double.parse(stdin.readLineSync()!);

    print("Digite a altura de $nome (Ex. 1.80): ");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = pessoa.calcularIMC();
    String interpretacao = pessoa.interpretarIMC(imc);

    print("Resultado do cálculo do IMC para ${pessoa.nome}: $imc");
    print("Classificação: $interpretacao");
  } catch (e) {
    print("Erro: $e");
  }
}
