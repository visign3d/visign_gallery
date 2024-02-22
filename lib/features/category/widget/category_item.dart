import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import 'package:visign_gallery/visign_galleria_lib.dart';

import '../../firebase/firebase_service.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key});

  final FirebaseService firebaseService = Get.find();

  String imageName = 'home_page/dome-8.jpg';

  final storage =FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebaseService.getImageURL(imageName),
      builder: (context, s) {
        if (s.data != null && s.data!.isNotEmpty) {

          return Image.network(s.data!);
        }
        return Placeholder();
      },

    );
  }
}
