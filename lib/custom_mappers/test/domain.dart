import 'package:dart_mappable/dart_mappable.dart';
part 'domain.mapper.dart';
@MappableClass(includeCustomMappers: [UriMapper()])
class Domain with DomainMappable{
  final Uri uri;

  const Domain(this.uri);
}

class UriMapper extends SimpleMapper<Uri> {
  const UriMapper();

  @override
  Uri decode(dynamic value) {
    return Uri.parse(value as String);
  }

  @override
  dynamic encode(Uri self) {
    return self.toString();
  }
}