import 'package:visign_gallery/abstract/abstract_lib.dart';
import 'package:visign_gallery/custom_mappers/custom_mappable_class.dart';

@CustomMappableClass()
class UserModel extends AObject<UserModel> {
  UserModel(
      {required this.role,
      required this.address,
      required this.name,
      required this.email,
      required this.avatarUrl,
      required super.id});

  final String name;

  final String email;

  final String avatarUrl;

  final String address;

  final String role;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
