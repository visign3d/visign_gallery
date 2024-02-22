import 'package:cached_network_image/cached_network_image.dart';
import 'package:visign_gallery/visign_galleria_lib.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.url, this.padding});

  final String url;

  final EdgeInsets? padding;



  @override
  Widget build(BuildContext context) {
    return Container(

      padding: padding,
      child: CachedNetworkImage(imageUrl: url),
    );
  }
}
