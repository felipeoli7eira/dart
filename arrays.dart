import 'dart:io';

main()
{
  print('+---------------------------------+');
  print('+    Crie sua lista de tarefas    +');
  print('+---------------------------------+');

  var tarefas = [];
  bool sair = false;

  while (sair == false) {
    String? text = stdin.readLineSync();
    if (text == 'pronto') {
      print('Programa encerrado!');
      print(tarefas);
      sair = true;
      return true;
    }
    tarefas.add(text);
    print(tarefas);
    print('Tarefa adicionada! digite a proxima ou "pronto" para sair.');
  }

  // construindo um array
  var nums = [1, 2, 3, 4, 5];
  // funcoes e metodos para arrays
  print(nums.length);
  nums.add(6);
  // acessando um indice de um arrau
  print(nums[0]); // 1
  // removendo itens de um array
  nums.remove(1);
  // removendo de uma posicao
  nums.removeAt(3);

  // Tipagem de lista
  List<String> nomes = ['Felipe', 'Alves', 'Oliveira'];
  print(nomes);
}