import 'package:get/get.dart';

import 'package:visign_gallery/visign_galleria_lib.dart';

import '../../features/firebase/firebase_service.dart';

class FireImage extends StatelessWidget {
  FireImage({super.key, required this.imgName, this.width, this.height});


  final double? width;
  final double? height;
  final String imgName;

  FirebaseService firebaseService = Get.find();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebaseService.getImageURL(imgName),
        builder: (context, s) {
          if (s.connectionState == ConnectionState.done && s.hasData) {
            return Image.network(s.data!,width: width,height: height,);
          }
          return const Placeholder();
        });
  }
}
