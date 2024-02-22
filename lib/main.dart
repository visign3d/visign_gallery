import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:get/get.dart';



import 'package:visign_gallery/firebase_options.dart';

import 'features/app/home_page.dart';
import 'features/app/navigation/route_names.dart';
import 'features/firebase/firebase_service.dart';
import 'features/firebase/google_sign_in_service.dart';
import 'features/parse_server/parse_service.dart';
import 'features/text/repository/parse_text_repository.dart';
import 'features/text/service/text_service.dart';
import 'features/xls/xls_service.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Get.put(XlsService()).getData();
  Get.put(FirebaseService());
  Get.put(GoogleSignInService());


  await ParseService().start();
  await Get.put(ParseTextRepository()).getAll();
  await Get.put(TextService()).start();

  print(await FirebaseService().getImageURL('home_page/dome-8.jpg'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteNames.initial,
      getPages: getRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
