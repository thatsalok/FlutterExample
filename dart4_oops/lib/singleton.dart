class Singleton {
  static Singleton _objSingleton;
  String _information;

  String get Information => _information;
  set Information(String info) {
    _information = info;
  }

  Singleton() {}

  factory Singleton.Me() {
    if (_objSingleton == null) _objSingleton = new Singleton();
    return _objSingleton;
  }
}
