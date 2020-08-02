import 'package:dart_extension_functions_example/entities/animal.dart';
import 'package:dart_extension_functions_example/entities/cachorro.dart';
import 'package:dart_extension_functions_example/entities/coruja.dart';
import 'package:dart_extension_functions_example/entities/peixe.dart';

extension AnimalExtension on Animal {
  ///
  ///
  String habilidade() {
    if (runtimeType == Cachorro) {
      return '${nome} pode Latir';
    } else if (runtimeType == Coruja) {
      return '${nome.toUpperCase()} pode voar e caça muito bem à noite';
    } else if (runtimeType == Peixe) {
      return '${nome} pode nadar por muito tempo';
    } else {
      return 'Não sei o que $nome pode fazer :(';
    }
  }
}
