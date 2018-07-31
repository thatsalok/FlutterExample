class OperatorOverload {
  int value = 0;

  operator +(int i) {
    this.value += i;
  }
}

void testOperatorOverload() {
  OperatorOverload oo = new OperatorOverload();
  print("initial value ${oo.value}");
  oo.value += 10;
  print("new value ${oo.value}");
}
