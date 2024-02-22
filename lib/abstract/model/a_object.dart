import 'package:equatable/equatable.dart';

///[id] : key
///
/// [value] : value
abstract class AObject<T> with EquatableMixin {
  const AObject({required this.id, this.value});

  final String id;
  final T? value;
}
