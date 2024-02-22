// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'a_model.dart';

class AModelMapper extends ClassMapperBase<AModel> {
  AModelMapper._();

  static AModelMapper? _instance;
  static AModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AModel';
  @override
  Function get typeFactory => <T>(f) => f<AModel<T>>();

  static String _$id(AModel v) => v.id;
  static const Field<AModel, String> _f$id = Field('id', _$id);

  @override
  final MappableFields<AModel> fields = const {
    #id: _f$id,
  };

  static AModel<T> _instantiate<T>(DecodingData data) {
    throw MapperException.missingConstructor('AModel');
  }

  @override
  final Function instantiate = _instantiate;

  static AModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AModel<T>>(map);
  }

  static AModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<AModel<T>>(json);
  }
}

mixin AModelMappable<T> {
  String toJson();
  Map<String, dynamic> toMap();
  AModelCopyWith<AModel<T>, AModel<T>, AModel<T>, T> get copyWith;
}

abstract class AModelCopyWith<$R, $In extends AModel<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id});
  AModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}
