import 'package:visign_gallery/visign_galleria_lib.dart';
import 'package:get/get.dart';

import '../../xls/xls_service.dart';
import 'category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  CategoryListWidget({super.key});

  XlsService xlsService = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Wrap(

          runSpacing: 0,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 25,
          children: List.generate(
              xlsService.categories.length,
              (index) => CategoryWidget(
                imageUrl: xlsService.categories[index].imageUrl,
                    name: xlsService.categories[index].name,
                  )),
        ),
      ),
    );
  }
}
