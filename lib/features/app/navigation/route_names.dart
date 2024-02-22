

import 'package:get/get_navigation/src/routes/get_route.dart';


import '../../front_end/widget/admin_page.dart';
import '../home_page.dart';

abstract class RouteNames {
  static get initial => '/';

  static get frontEnd => '/${Admin().runtimeType.toString()}';

  //static get counterView => '/${CounterView().runtimeType.toString()}';

  //static get devView => '/${DevScreen().runtimeType.toString()}';

///todo add dev page route name
}

List<GetPage>? getRoutes = [
  GetPage(name: RouteNames.initial, page: () => HomePage()),
  //GetPage(name: '${RouteNames.counterView}/:id', page: () => CounterView()),
  GetPage(name: RouteNames.frontEnd, page: () => Admin()),
  //GetPage(name: RouteNames.devView, page: () => DevScreen()),
];