// exercicio_9.dart

import 'dart:io';

void main() {
  print('Digite o salário mensal:');
  double? salario = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  if (salario == null) {
    print('Salário inválido.');
    return;
  }

  double imposto = 0.0;

  if (salario <= 1903.98) {
    imposto = 0.0;
  } else if (salario <= 2826.65) {
    imposto = salario * 0.075;
  } else if (salario <= 3751.05) {
    imposto = salario * 0.15;
  } else if (salario <= 4664.68) {
    imposto = salario * 0.225;
  } else {
    imposto = salario * 0.275;
  }

  if (imposto == 0.0) {
    print('Isento de imposto.');
  } else {
    print('Imposto a pagar: R\$ ${imposto.toStringAsFixed(2)}');
  }
}
