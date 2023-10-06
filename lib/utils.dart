import 'dart:convert';
import 'dart:io' show exit, stdin;

double calculateImc(double peso, double altura) {
  return peso / (altura * altura);
}

double lerConsoleDouble(String texto) {
  print(texto);
  var line;
  try {
    line = stdin.readLineSync(encoding: utf8);
    return double.parse(line);
  } catch (e) {
    print(e);
    exit(0);
  }
}
