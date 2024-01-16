import 'package:imc_calc/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('Calcula IMC corretamente', () {
      Pessoa pessoa = Pessoa('Teste', 70, 1.75);
      expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
    });

    test('Interpretação do IMC para peso normal', () {
      Pessoa pessoa = Pessoa('Teste', 70, 1.75);
      expect(pessoa.interpretarIMC(22.86), equals('Peso normal'));
    });

    test('Interpretação do IMC para obesidade grau 1', () {
      Pessoa pessoa = Pessoa('Teste', 100, 1.72);
      expect(pessoa.interpretarIMC(32.65), equals('Obesidade grau 1 (leve)'));
    });

    test('Interpretação do IMC para obesidade grau 2', () {
      Pessoa pessoa = Pessoa('Teste', 110, 1.72);
      expect(
          pessoa.interpretarIMC(37.18), equals('Obesidade grau 2 (moderada)'));
    });

    test('Interpretação do IMC para obesidade grau 1', () {
      Pessoa pessoa = Pessoa('Teste', 120, 1.72);
      expect(pessoa.interpretarIMC(40.56), equals('Obesidade grau 3 (grave)'));
    });
    test('Altura inválida lança exceção', () {
      Pessoa pessoa = Pessoa('Teste', 70, 0);
      expect(() => pessoa.calcularIMC(), throwsException);
    });
  });
}
