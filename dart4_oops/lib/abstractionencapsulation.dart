class AbstractionEncapsulation {
  String title;

  AbstractionEncapsulation(String argtitle) : title = argtitle {
    print("in default constructor $title");
  }

  AbstractionEncapsulation.fromAnotherObject(
      AbstractionEncapsulation abstEncap) {
    this.title = abstEncap.title;
  }

  printTitle() {
    print(title);
  }
}

void testabstractionencapsulation() {
  print("testabstractionencapsulation start");
  AbstractionEncapsulation abstractionEncapsulation =
      new AbstractionEncapsulation('hello');

  AbstractionEncapsulation abstractionEncapsulation1 =
      new AbstractionEncapsulation.fromAnotherObject(abstractionEncapsulation);

  abstractionEncapsulation1.printTitle();
}
