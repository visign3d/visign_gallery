import 'dart:io';

import 'package:visign_gallery/abstract/abstract_lib.dart';

abstract class AFile extends AObject<AFile> {
  AFile({required this.file, required super.id});

  final File file;
}
