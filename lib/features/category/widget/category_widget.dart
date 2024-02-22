import 'package:cached_network_image/cached_network_image.dart';
import 'package:visign_gallery/visign_galleria_lib.dart';
import 'package:get/get.dart';
import 'package:visign_gallery/widgets/image/fire_image.dart';

import 'category_page.dart';



class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.name, this.imageUrl = ''});

  final String name;

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Get.to(CategoryPage(
              categoryName: name,
            ));
          },
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white60,
                child: imageUrl.isNotEmpty
                    ? SizedBox(height: 300,
                      child: FireImage(
                          imgName: imageUrl,
                        ),
                    )
                    : SizedBox(
                        width: 200, height: 300, child: const Placeholder()),
              ),
              Text(name),
            ],
          ),
        ));
  }
}
