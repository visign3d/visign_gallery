import 'package:get/get.dart';
import 'package:visign_gallery/abstract/abstract_lib.dart';
import 'package:visign_gallery/abstract/file/a_file.dart';

import '../parse_server/parse_service.dart';


class ParseFileRepository extends ARepository<AFile> {


  ParseService parseService =Get.find();

  @override
  Future<void> create(AFile item) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(AFile item) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<AFile>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<AFile?> getById(id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<void> update(AFile item) {
    // TODO: implement update
    throw UnimplementedError();
  }




}