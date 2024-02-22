import 'package:visign_gallery/abstract/abstract_lib.dart';

class AppModel extends AObject<AppModel> {
  AppModel({required this.firstLaunch, required super.id});

  final bool firstLaunch;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
