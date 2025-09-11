// exercicio_4.dart

import 'dart:io';

void main() {
  print('Digite a primeira nota:');
  double? nota1 = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  print('Digite a segunda nota:');
  double? nota2 = double.tryParse(stdin.readLineSync()!.replaceAll(',', '.'));

  if (nota1 == null || nota2 == null) {
    print('Nota inválida.');
    return;
  }

  double media = (nota1 + nota2) / 2;
  String situacao;

  if (media >= 7) {
    situacao = 'Aprovado';
  } else if (media >= 4) {
    situacao = 'Recuperação';
  } else {
    situacao = 'Reprovado';
  }

  print('Média: ${media.toStringAsFixed(2)} - Situação: $situacao');
}
