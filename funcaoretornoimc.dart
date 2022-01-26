import 'dart:io';

main() {
  calculoImc();
}

calculoImc() {
  print("===DIGITE SEU PESO===");
  String textPeso = stdin.readLineSync() ?? '';
  int peso = int.parse(textPeso);

  print('===DIGITE SUA ALTURA===');
  String textAltura = stdin.readLineSync() ?? '';
  double altura = double.parse(textAltura);

  double imc = calcImc(peso, altura);

  imprimirResultado(imc);
}

calcImc(int peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(double imc) {
  print('==== IMC ====');

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc > 18.5 && imc < 24.9) {
    print('Peso normal');
  } else if (imc > 25 && imc < 29.9) {
    print('Sobrepeso');
  } else if (imc > 30 && imc < 34.9) {
    print('Obesidade grau 1');
  } else if (imc > 35 && imc < 39.9) {
    print('Obesidade grau 2');
  } else {
    print('Obesidade grau 3');
  }
}
