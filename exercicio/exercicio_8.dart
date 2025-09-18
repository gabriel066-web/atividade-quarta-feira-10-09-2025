// exercicio_8.dart

import 'dart:io';

void main() {
  print('Digite o lado 1:');
  double? lado1 = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  print('Digite o lado 2:');
  double? lado2 = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  print('Digite o lado 3:');
  double? lado3 = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  if (lado1 == null || lado2 == null || lado3 == null) {
    print('Entrada inválida.');
    return;
  }

  if (lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1) {
    if (lado1 == lado2 && lado2 == lado3) {
      print('Triângulo Equilátero');
    } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
      print('Triângulo Isósceles');
    } else {
      print('Triângulo Escaleno');
    }
  } else {
    print('Os lados não formam um triângulo.');
  }
}
