import 'dart:io';

main()
{
  // algoritmo para saber se a pessoa é maior de idade
  print('-=-=-=-=- DIGITE A IDADE -=-=-=-=-');
  String input = stdin.readLineSync() ?? '';
  var idadeDaPessoa = input == '' ? 0 : int.parse(input);

  if (input == '') {
    print('Idade não informada. Programa encerrado.');
    return;
  }

  if (idadeDaPessoa >= 18) {
    print('+------------------------------+');
    print('|    Pessoa maior de idade     |');
    print('+------------------------------+');
    return;
  }

  print('+------------------------------+');
  print('|    Pessoa menor de idade    |');
  print('+------------------------------+');
  return;
}