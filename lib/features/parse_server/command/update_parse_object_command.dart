import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:visign_gallery/abstract/abstract_lib.dart';

///update one , existing parse class field , for row with given objectId
class UpdateParseFieldCommand extends ACommand {
  const UpdateParseFieldCommand(
      {required this.id,
      required this.key,
      required this.value,
      required this.className});

  final String className;
  final String id;
  final String key;
  final String value;

  @override
  execute() async {
    ParseObject object = ParseObject(className)
      ..objectId = id
      ..set(key, value);
    await object.save();

    // var o =await object.get(id);
    // o.result.set(key, value);

    // var firstObject = ParseObject(className)
    //   ..set(key,
    //       value);
    //await object.save();

    print('done');
  }
}
