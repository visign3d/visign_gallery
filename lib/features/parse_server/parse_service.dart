import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:visign_gallery/abstract/abstract_lib.dart';


class ParseService extends AService {
  @override
  Future start() async {
    print('start parse');

    Parse p = await Parse().initialize(
        'BjohSW5SctlZup3jtjqzIehaVNSgQo9ZT0thTxFo',
        'https://parseapi.back4app.com/',
        clientKey: 'qQO0mFSVapuKBBLLJd5Jm1mX7uOaAUFHp62v5FiR',
        autoSendSessionId: true);
    var a = await p.healthCheck();
    print('Parse status code${a.statusCode}');


  }

  uploadImage() {}
}
