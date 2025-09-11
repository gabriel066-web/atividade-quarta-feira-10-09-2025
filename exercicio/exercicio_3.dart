// exercicio_3.dart

import 'dart:io';

void main() {
  print('Digite o peso (kg):');
  double? peso = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  print('Digite a altura (m):');
  double? altura = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  if (peso == null || altura == null || altura == 0) {
    print('Entrada inválida.');
    return;
  }

  double imc = peso / (altura * altura);
  String classificacao;

  if (imc < 18.5) {
    classificacao = 'Abaixo do peso';
  } else if (imc < 25) {
    classificacao = 'Peso normal';
  } else if (imc < 30) {
    classificacao = 'Sobrepeso';
  } else if (imc < 35) {
    classificacao = 'Obesidade grau 1';
  } else if (imc < 40) {
    classificacao = 'Obesidade grau 2';
  } else {
    classificacao = 'Obesidade grau 3';
  }

  print('Seu IMC é ${imc.toStringAsFixed(2)} - $classificacao');
}
