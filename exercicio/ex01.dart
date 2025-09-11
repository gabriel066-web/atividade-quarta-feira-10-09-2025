// exercicio_1.dart

import 'dart:io';

void main() {
  print('Digite sua idade:');
  int? idade = int.tryParse(stdin.readLineSync()!);

  if (idade == null) {
    print('Entrada inválida.');
    return;
  }

  if (idade >= 16) {
    print('Você está apto(a) a votar este ano.');
  } else {
    print('Você não está apto(a) a votar este ano.');
  }
}

