// exercicio_10.dart

import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numeroSecreto = random.nextInt(100) + 1;
  int? palpite;

  print('Tente adivinhar o número secreto entre 1 e 100.');

  do {
    print('Digite seu palpite:');
    palpite = int.tryParse(stdin.readLineSync()!);

    if (palpite == null) {
      print('Entrada inválida.');
      continue;
    }

    String mensagem = palpite > numeroSecreto ? 'Muito alto' : 'Muito baixo';

    if (palpite != numeroSecreto) {
      print(mensagem);
    }
  } while (palpite != numeroSecreto);

  print('Parabéns! Você acertou o número secreto: $numeroSecreto');
}
