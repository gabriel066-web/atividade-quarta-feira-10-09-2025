// exercicio_7.dart

import 'dart:io';

void main() {
  double saldo = 1000.0;

  while (true) {
    print('\nCaixa Eletrônico');
    print('1 - Saldo');
    print('2 - Saque');
    print('3 - Depósito');
    print('4 - Sair');
    print('Escolha uma opção:');

    int? opcao = int.tryParse(stdin.readLineSync()!);

    if (opcao == null) {
      print('Opção inválida');
      continue;
    }

    if (opcao == 4) {
      print('Encerrando...');
      break;
    }

    switch (opcao) {
      case 1:
        print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
        break;
      case 2:
        print('Digite o valor para saque:');
        double? saque = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));
        if (saque == null || saque <= 0) {
          print('Valor inválido.');
          break;
        }
        if (saque > saldo) {
          print('Saldo insuficiente.');
        } else {
          saldo -= saque;
          print('Saque realizado com sucesso. Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
        }
        break;
      case 3:
        print('Digite o valor para depósito:');
        double? deposito = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));
        if (deposito == null || deposito <= 0) {
          print('Valor inválido.');
          break;
        }
        saldo += deposito;
        print('Depósito realizado com sucesso. Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
        break;
      default:
        print('Opção inválida');
    }
  }
}
