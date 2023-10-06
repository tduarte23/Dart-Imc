import 'package:cli/utils.dart' as utils;

class Pessoa {
  double _peso = 0.0;
  String _nome = "";
  int _idade = 0;
  double _altura = 0;
  double _imc = 0;

  Pessoa(String nome, int idade, double peso, double altura) {
    _nome = nome;
    _idade = idade;
    _peso = peso;
    _altura = altura;
  }

  void imcFinal() {
    double res = utils.calculateImc(_peso, _altura);
    setImc(res);

    switch (res) {
      case <= 18.5:
        return print("O seu IMC é :$res . Você está abaixo do ideal.");
      case >= 18.6 && <= 24.9:
        return print("O seu IMC é :$res . Você está com o peso ideal.");
      case >= 25.0 && <= 29.9:
        return print("O seu IMC é :$res . Você está levemente acima do peso.");
      default:
    }
  }

  void setImc(double imc) {
    _imc = imc;
  }

  double getImc() {
    return _imc;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setIdade(int idade) {
    _idade = idade;
  }

  int getIdade() {
    return _idade;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double? getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double? getAltura() {
    return _altura;
  }
}
