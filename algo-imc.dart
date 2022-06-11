import 'dart:io';

void main()
{
  // algoritmo de calculo de IMC

  // * Pegar o peso da pessoa
  print('=-=-=-=-=-= DIGITE SEU PESO =-=-=-=-=-=');
  String? input = stdin.readLineSync() ?? '';
  if (input.isEmpty) {
    print('Programa encerrado por falta de informacoes.');
    return;
  }
  var peso = int.parse(input);


  // * Pegar o altura da pessoa
  print('=-=-=-=-=-= DIGITE SUA ALTURA EM CM =-=-=-=-=-=');
  input = stdin.readLineSync() ?? '';
  if (input.isEmpty) {
    print('Programa encerrado por falta de informacoes.');
    return;
  }
  var altura = int.parse(input);

  // * Calcular o IMC
  var IMC = peso / (altura * altura);

  print('=-=-=-=-=-= RESULTADO DO IMC =-=-=-=-=-=');
  print(IMC);
  print(65 / (162 * 162));
}