// exercicio_2.dart

import 'dart:io';

void main() {
  print('Digite o valor da compra:');
  double? valorCompra = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  if (valorCompra == null) {
    print('Valor inválido.');
    return;
  }

  if (valorCompra > 100) {
    double desconto = valorCompra * 0.10;
    double valorFinal = valorCompra - desconto;
    print('Compra com desconto: R\$ ${valorFinal.toStringAsFixed(2)}');
  } else {
    print('Valor da compra: R\$ ${valorCompra.toStringAsFixed(2)}');
  }
}
