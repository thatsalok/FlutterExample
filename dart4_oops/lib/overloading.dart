class Overloading {
  final int Price;
  Overloading({this.Price});
//using Optional Parameter
  int getTyrePrice(int iTyres, [int price]) {
    if (price != null) return iTyres * price;
    return iTyres * Price;
  }

//-- Using Named Paramter
  String getTyreBrand(int price, {int multiple}) {
    int iprice = price;
    if (multiple != null) iprice *= multiple;

    if (iprice < 100)
      return "APOLLO TYRES";
    else if (iprice < 200)
      return "BRIDGESTONE ";
    else if (iprice < 500) return "MICHELIN ";
    return "Tyre not available";
  }
}

testOverloadingdart() {
  Overloading obj = new Overloading(Price: 100);
  print(obj.getTyrePrice(5));
  print(obj.getTyrePrice(5, 200));
  print(obj.getTyreBrand(150));
  print(obj.getTyreBrand(90, multiple: 3));
}
