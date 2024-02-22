
import 'package:dart_mappable/dart_mappable.dart';

import '../abstract/abstract_lib.dart';
import 'color_mapper.dart';

class MapperService extends AService{
  @override
  start() {
    MapperContainer.globals.use(const ColorMapper());
  }
}