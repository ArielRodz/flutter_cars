class Company{
  String _name;
  String _description;
  String _product;
  int _numVehicles;
  String  _img;

   Company({name, description, product, numVehicles, img}) : _name = name,_description=description,_product=product,_numVehicles=numVehicles,_img=img;

  String get img => _img;

  set img(String value) {
    _img = value;
  }

  int get numVehicles => _numVehicles;

  set numVehicles(int value) {
    _numVehicles = value;
  }

  String get product => _product;

  set product(String value) {
    _product = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


}