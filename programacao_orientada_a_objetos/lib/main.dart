import 'src/Pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa(nome: 'felipe', idade: 24, genero: 'masculino');

  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.genero);
  print(pessoa.peso);
  print(pessoa.altura);
  print(pessoa.arrowFunc());
}
