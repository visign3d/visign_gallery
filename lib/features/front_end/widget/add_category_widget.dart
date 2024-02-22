
import 'package:visign_gallery/visign_galleria_lib.dart';

import '../../firebase/firebase_service.dart';

class AddCategoryWidget extends StatelessWidget {
  AddCategoryWidget({super.key});

  final FirebaseService firebaseService =Get.find();

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){firebaseService.uploadImage('image/');}, icon: Icon(Icons.add));
  }
}
