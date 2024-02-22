import 'package:visign_gallery/visign_galleria_lib.dart';
import 'package:get/get.dart';

import 'item_view_widget.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
         showDialog(context: context, builder: (_)=>ItemViewWidget());
        },
        child: Container(
            padding: EdgeInsets.all(8),
            height: 400,
            width: 200,
            child: const Placeholder()));
  }
}
