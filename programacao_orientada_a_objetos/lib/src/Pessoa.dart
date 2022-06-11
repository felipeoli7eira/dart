import 'Humano.dart';

class Pessoa extends Humano // polimorfismo
{
  String? nome;
  int? idade;
  String? genero;

  final int CPF = 33216335232; // private
  // final int _RG = 999888; // private

  // construtor de um objeto em dart é um método com a mesma assinatira do nome da classe
  // dessa forma, estou trabalhando com "contrutor inteligente" (sem escopo e desestruturando para cada prop)
  Pessoa({this.nome, this.idade, this.genero});

  String arrowFunc() => 'arrow function';
}
