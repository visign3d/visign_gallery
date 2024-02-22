// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'domain.dart';

class DomainMapper extends ClassMapperBase<Domain> {
  DomainMapper._();

  static DomainMapper? _instance;
  static DomainMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DomainMapper._());
      MapperContainer.globals.useAll([UriMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'Domain';

  static Uri _$uri(Domain v) => v.uri;
  static const Field<Domain, Uri> _f$uri = Field('uri', _$uri);

  @override
  final MappableFields<Domain> fields = const {
    #uri: _f$uri,
  };

  static Domain _instantiate(DecodingData data) {
    return Domain(data.dec(_f$uri));
  }

  @override
  final Function instantiate = _instantiate;

  static Domain fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Domain>(map);
  }

  static Domain fromJson(String json) {
    return ensureInitialized().decodeJson<Domain>(json);
  }
}

mixin DomainMappable {
  String toJson() {
    return DomainMapper.ensureInitialized().encodeJson<Domain>(this as Domain);
  }

  Map<String, dynamic> toMap() {
    return DomainMapper.ensureInitialized().encodeMap<Domain>(this as Domain);
  }

  DomainCopyWith<Domain, Domain, Domain> get copyWith =>
      _DomainCopyWithImpl(this as Domain, $identity, $identity);
  @override
  String toString() {
    return DomainMapper.ensureInitialized().stringifyValue(this as Domain);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            DomainMapper.ensureInitialized()
                .isValueEqual(this as Domain, other));
  }

  @override
  int get hashCode {
    return DomainMapper.ensureInitialized().hashValue(this as Domain);
  }
}

extension DomainValueCopy<$R, $Out> on ObjectCopyWith<$R, Domain, $Out> {
  DomainCopyWith<$R, Domain, $Out> get $asDomain =>
      $base.as((v, t, t2) => _DomainCopyWithImpl(v, t, t2));
}

abstract class DomainCopyWith<$R, $In extends Domain, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Uri? uri});
  DomainCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DomainCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Domain, $Out>
    implements DomainCopyWith<$R, Domain, $Out> {
  _DomainCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Domain> $mapper = DomainMapper.ensureInitialized();
  @override
  $R call({Uri? uri}) =>
      $apply(FieldCopyWithData({if (uri != null) #uri: uri}));
  @override
  Domain $make(CopyWithData data) => Domain(data.get(#uri, or: $value.uri));

  @override
  DomainCopyWith<$R2, Domain, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DomainCopyWithImpl($value, $cast, t);
}
