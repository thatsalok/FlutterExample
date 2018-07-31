enum EAnimal { Lion, Cat }

abstract class Animal {
  Animal() {}
  factory Animal.GetAnimal(EAnimal animal) {
    switch (animal) {
      case EAnimal.Lion:
        return new Loin();
      case EAnimal.Cat:
        return new Cat();
      default:
        return null;
    }
  }

  String SayHello();
}

class Cat extends Animal {
  @override
  String SayHello() {
    return "Cat say meow";
  }
}

class Loin extends Animal {
  @override
  String SayHello() {
    return "Loin Roar";
  }
}
