class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    if (altura <= 0) {
      throw Exception("Altura inválida.");
    }
    return peso / (altura * altura);
  }

  String interpretarIMC(double imc) {
    if (imc < 18.5) {
      return "Abaixo do peso";
    } else if (imc >= 18.5 && imc <= 24.9) {
      return "Peso normal";
    } else if (imc >= 25 && imc <= 29.9) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc <= 34.9) {
      return "Obesidade grau 1 (leve)";
    } else if (imc >= 35 && imc <= 39.9) {
      return "Obesidade grau 2 (moderada)";
    } else {
      return "Obesidade grau 3 (grave)";
    }
  }
}
