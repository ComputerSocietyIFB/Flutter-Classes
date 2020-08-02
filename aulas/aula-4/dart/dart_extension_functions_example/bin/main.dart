import 'package:dart_extension_functions_example/entities/cachorro.dart';
import 'package:dart_extension_functions_example/entities/coruja.dart';
import 'package:dart_extension_functions_example/entities/peixe.dart';
import 'package:dart_extension_functions_example/my_extension.dart';

void main() {
  var cachorro = Cachorro(nome: 'Billy');
  var coruja = Coruja(nome: 'Angelina');
  var peixe = Peixe(nome: 'Clóvis');

  print(cachorro.habilidade());
  print(coruja.habilidade());
  print(peixe.habilidade());
}
