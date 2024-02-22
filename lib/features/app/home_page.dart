import 'package:cached_network_image/cached_network_image.dart';

import 'package:visign_gallery/visign_galleria_lib.dart';

import '../category/widget/category_list_widget.dart';
import '../file/filepicker_buttun.dart';
import '../firebase/google_sign_in_service.dart';
import '../welcome_show/welcome_show_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GoogleSignInService signInService = Get.find();

  final RxBool showIsVisible = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        appBar: showIsVisible.value == true
            ? null
            : AppBar(
                actions: [
                  FilePickerButton(
                    onPick: (f) {},
                  ),
                  IconButton(
                      onPressed: () {
                        signInService.signIn();
                      },
                      icon: Icon(Icons.person))
                ],
                title: Text('VisignTents'),
                leading: MaterialButton(
                  onPressed: null,
                  child: Image.asset('image/logo.jpg'),
                ),
              ),
        body: Obx(
          () => showIsVisible.value == false
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      CategoryListWidget(),
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 200,
                        child: const TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              hintFadeDuration: Duration(),
                              hintText: 'email@email.com',
                              labelText: 'Subscribe',

                              //label: Text('Subscribe with email'),
                              //helperText: "write your email and press enter",
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                )
              : WelcomeShowPage(onTabChange: onTabChange, children: [
                  CachedNetworkImage(

                      imageUrl:
                          'https://parsefiles.back4app.com/BjohSW5SctlZup3jtjqzIehaVNSgQo9ZT0thTxFo/cde3b2c16aade30da4ae2a8f2d9d5e61_10x15-4cornerdown-H2.jpg'),
                  CachedNetworkImage(
                      imageUrl:
                          'https://parsefiles.back4app.com/BjohSW5SctlZup3jtjqzIehaVNSgQo9ZT0thTxFo/119fb5df5aa48b9f978c0bf042cc614d_glamper_normal.jpg'),
                  CachedNetworkImage(
                      imageUrl:
                          'https://parsefiles.back4app.com/BjohSW5SctlZup3jtjqzIehaVNSgQo9ZT0thTxFo/054195007990650a4faa1f15b34d6a01_Floating.jpg'),
                  Placeholder()
                ]),
        ),
        floatingActionButton: showIsVisible.value == true
            ? null
            : FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.chat_bubble_outline),
              ),
      ),
    );
  }

  onTabChange(int index) {
    if (index > 2) {
      showIsVisible.value = false;
    }
  }
}
