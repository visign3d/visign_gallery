
import 'package:dart_mappable/dart_mappable.dart';

class CustomMappableClass extends MappableClass {
  const CustomMappableClass(
      {Iterable<MapperBase<Object>>? includeCustomMappers})
      : super(
            includeCustomMappers: includeCustomMappers,
            generateMethods: GenerateMethods.copy |
                GenerateMethods.decode |
                GenerateMethods.encode |
                GenerateMethods.stringify);
}
