import 'package:visign_gallery/visign_galleria_lib.dart';

import '../../item/item_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.categoryName});


  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(leading: BackButton(),title: Text(categoryName),),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            ...List.generate(35, (index) => ItemWidget())
          ],
        ),
      ),
    );
  }
}
