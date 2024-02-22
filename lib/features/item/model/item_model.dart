import 'package:visign_gallery/abstract/abstract_lib.dart';

class ItemModel extends AObject<ItemModel> {
  ItemModel(
      {this.name='',
      this.text='',
      this.iconUrl='',
      this.imgUrl='',
      this.imgXLUrl='',
      required super.id});

  final String name;

  final String text;

  final String iconUrl;

  final String imgUrl;

  final String imgXLUrl;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
