import 'dart:io';

int soma(var entrada) {
  var soma = 0;
  for (int i = 0; i < entrada; i++) {
    if (i % 3 == 0) {
      soma += i;
    } else if (i % 5 == 0) {
      soma += i;
    }
  }
  return soma;
}

void interface() {
  var entrada;
  var aux;
  print('Digite um numero inteiro ou sair para finalizar o programa');
  while (entrada != 'sair') {
    aux = 0;
    entrada = stdin.readLineSync();
    aux = int.tryParse(entrada.toString()) ?? 'no';
    if (aux != 'no') {
      print(
          "somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores: $entrada");
      print(soma(aux));
    } else {
      if (entrada != 'sair') {
        print('Por favor digite um valor inteiro');
      }
    }
  }
}

void main() {
  interface();
}
