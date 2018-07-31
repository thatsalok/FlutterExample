import 'package:dart4_oops/abstractionencapsulation.dart'
    as abstractionencapsulation;
import 'package:dart4_oops/singleinheritence.dart' as singleinheritencedart;
import 'package:dart4_oops/multipleinheritence.dart' as multipleinheritencedart;
import 'package:dart4_oops/overloading.dart' as Overloadingdart;
import 'package:dart4_oops/singleton.dart';
import 'package:dart4_oops/factorypattern.dart';
import 'package:dart4_oops/operatoroverload.dart' as OO;

main(List<String> arguments) {
  abstractionencapsulation.testabstractionencapsulation();
  testsingleinheritencedart();
  testmultipleinheritencedart();
  Overloadingdart.testOverloadingdart();
  testSingleton();
  testFactoryPattern();
  OO.testOperatorOverload();
}

void testFactoryPattern() {
  print(new Animal.GetAnimal(EAnimal.Lion).SayHello());
  print(new Animal.GetAnimal(EAnimal.Cat).SayHello());
}

void testSingleton() {
  Singleton singleton = new Singleton.Me();
  singleton.Information = "Information from first Object";
  print("From singleton object :" + singleton.Information);

  Singleton singleton1 = new Singleton.Me();
  print("From singleton1 object :" + singleton1.Information);
}

testsingleinheritencedart() {
  singleinheritencedart.Shape sh = new singleinheritencedart.Rectangle();
  sh.breath = 10;
  sh.length = 10;

  print("the area of ${sh.name} is ${sh.getArea()}");
}

testmultipleinheritencedart() {
  singleinheritencedart.Shape sh = new multipleinheritencedart.Circle();

  sh.length = 10;

  multipleinheritencedart.ShapePerimeter sp =
      sh as multipleinheritencedart.Circle;

  print("the area of ${sh.name} is ${sh.getArea()}");
  print("the perimeter of ${sh.name} is ${sp.getPerimeter()}");
}
