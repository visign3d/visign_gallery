import 'package:visign_gallery/abstract/app/app_route_typedef.dart';
import 'package:visign_gallery/abstract/app/initial_route.dart';

import '../../visign_galleria_lib.dart';
import '../app/a_app.dart';


class GetXApp extends AApp {
  final AppRoute routes;

  GetXApp({this.routes = const {}, super.key, required Scaffold homePage})
      : super(
          homePage: homePage,
          app: GetMaterialApp(initialRoute: initialRoute, routes: routes,home: homePage,),
        );


}
