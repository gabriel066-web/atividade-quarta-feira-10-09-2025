// exercicio_6.dart

import 'dart:io';

void main() {
  print('Menu:');
  print('1 - Pizza - R\$ 30.00');
  print('2 - Hambúrguer - R\$ 15.00');
  print('3 - Salada - R\$ 10.00');
  print('4 - Refrigerante - R\$ 5.00');
  print('Escolha uma opção (1-4):');

  int? opcao = int.tryParse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      print('Você escolheu Pizza. Valor: R\$ 30.00');
      break;
    case 2:
      print('Você escolheu Hambúrguer. Valor: R\$ 15.00');
      break;
    case 3:
      print('Você escolheu Salada. Valor: R\$ 10.00');
      break;
    case 4:
      print('Você escolheu Refrigerante. Valor: R\$ 5.00');
      break;
    default:
      print('Opção inválida');
  }
}
