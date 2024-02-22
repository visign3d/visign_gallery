



import 'package:dart_mappable/dart_mappable.dart';

import 'a_object.dart';
import 'package:equatable/equatable.dart';

import '../../custom_mappers/custom_mappable_class.dart';


part 'a_model.mapper.dart';

///todo check this class for implementation
@CustomMappableClass()
abstract class AModel<T> extends AObject
    with  EquatableMixin,AModelMappable {
  const AModel({required super.id});







}







