import 'dart:io';

main()
{
  /*
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  */

  // print('+-----------------------------+');

  /* 
  bool whileController = true;
  int counter = 1;
  while(counter <= 10) {
    print(counter);
    counter += 1;
  }
  */

  // exemplo real
  bool programaFinalizado = false;
  while(programaFinalizado == false) {
    String? input = stdin.readLineSync();
    if (input == 'sair') {
      programaFinalizado = true;
      print('Programa finalizado!');
      return true;
    }

    print("Opção Digitada: $input");
  }
}