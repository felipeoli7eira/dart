import 'dart:io';

List<String> produtos = []; // escopo global

main()
{
  bool runWhile = true;

// Inicia o programa
  iniciar();

  while(runWhile) {
    String? input = stdin.readLineSync() ?? '';

    // Finaliza o programa
    if (input == 'fim') {
      encerrar();
      runWhile = false;
    }

    // Visualizar carrinho
    else if (input == 'ver') {
      clear();
      print('\n*** Seu carrinho ate o momento ***');
      imprimirCarrinho();
    }

    // Remover item do carrinho
    else if (input == 'remove') {
      clear();
      print('\n*** Informe o numero do item que deseja remover ***');
      imprimirCarrinho();

      String? item = stdin.readLineSync() ?? '';
      if (item.isEmpty) {
        print('\n***Nenhum item removido ***');
      }
      else {
        int index = int.parse(item) - 1;
        produtos.removeAt(index);
        print('*** Item removido. ***\n');
      }
    }

    // Trata entradas vazias
    else if (input.isEmpty) {
      clear();
      print('\n** Nenhum produto informado **');
      print('Continue as compras');
    }

    // Adiciona um item no carrinho
    else {
      clear();
      print('\n*** Produto Adicionado. Continue as compras ***\n');
      produtos.add(input);
    }
  }
}

iniciar()
{
  print('\n************************************');
  print('*** Carrinho de compras iniciado ***');
  print('************************************');

  print('\n!) Digite "ver" para ver os produtos no carrinho');
  print('\n!) Digite "remove" para remove um produtos da lista');
  print('!) Digite "fim" para encerrar as compras\n');
  print('Boas compras! comece a adicionar seus produtos:\n');
}

encerrar()
{
  print('\n***************************');
  print('*** Compras Finalizadas ***');
  print('***************************\n');
  imprimirCarrinho();
}

clear()
{
  print('\x1B[2J\x1B[0;0H');
}

imprimirCarrinho()
{
  for (var i = 0; i < produtos.length; i++) {
    int item = i + 1;
    print("Item $item: ${produtos[i]}");
  }
  print('\n');
}