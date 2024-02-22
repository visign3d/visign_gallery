import 'package:visign_gallery/abstract/abstract_lib.dart';

///command would executed immedietly after instanciation
abstract class AAction extends ACommand{
  AAction(){
    execute();
  }
}