abstract class Animal {
  String? nome;
  int? idade;
  void comer() {
    print("Comeu");
  }

  void dormir() {
    print("Dormiu");
  }

  void morrer();
}

class Cachorro extends Animal {
  void latir() {
    print("Latiu");
  }

  @override
  void comer() {
    print("Comeu Carne");
    super.dormir();
  }

  void morrer() {
    print("morreu como cachorro");
  }
}

class Gato extends Animal {
  void miar() {
    print("Miar");
  }

  void morrer() {
    print("Morreu como um gato");
  }
}

void main() {
  Cachorro c1 = Cachorro();
  c1.nome = "dog";
  Gato g1 = Gato();
  g1.nome;

  c1.comer();
  g1.comer();
  List<Animal> animais = [];
  animais
    ..add(c1)
    ..add(g1);
  for (Animal animal in animais) {
    animal.comer();
    if (animal is Cachorro) {
      animal.latir();
    } else if (animal is Gato) {
      animal.miar();
    }
    animal.morrer();
  }
}
