// Animal
class Animal {
  String nome;

  Animal({this.nome});

  String comer() => 'Comendo...';
  String dormir() => 'Dormindo...';

  @override
  String toString() {
    return nome;
  }
}
