

import 'a_container.dart';

///Singleton class for implementing abstract dependency containers
class CO {
  static final CO _singleton = CO._internal();

  factory CO() {
    return _singleton;
  }

  static CO instance =_singleton;

  CO._internal();

   static late AContainer _container;

  initialize(AContainer container) {
    _container = container;
  }

  static T get<T>(String? id) => _container.get<T>(id);

  static lazyPut<T>(T object) => _container.lazyPut<T>(object);

  static put<T>(T object, String? id) => _container.put<T>(object, id);
}
