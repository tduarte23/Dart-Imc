import 'package:cli/classes/Pessoa.dart';
import 'package:cli/utils.dart' as utils;

void main(List<String> arguments) {
  double? peso = utils.lerConsoleDouble("Digite o seu peso: ");
  double? altura = utils.lerConsoleDouble("Digite a sua altura: ");
  var p1 = Pessoa("thomas", 23, peso, altura);

  p1.imcFinal();
}
