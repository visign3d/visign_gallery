import 'package:visign_gallery/abstract/abstract_lib.dart';

import 'hive_init_command.dart';

class HiveLocalStore extends AService{
  @override
  start() async{

    await HiveInitCommand().execute();
  }



}