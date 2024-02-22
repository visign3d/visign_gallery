
import 'package:visign_gallery/visign_galleria_lib.dart';

import 'add_category_widget.dart';

///todo admin routing
class Admin extends StatelessWidget {
  Admin({super.key});

  final RxBool show = false.obs;

  final String p ='ggg123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Obx(
          ()=> Center(
          child: !show.value ? SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Under construction , come back later...'),
                  TextField(
                    onSubmitted: onSubmitted,
                  ),
                ],
              )):AddCategoryWidget(),
        ),
      ),
    );
  }

  ///todo verify admin password
  onSubmitted(String text) {
    if(text==p){
      show.value=true;
      return;
    }
    show.value=false;

  }





}
