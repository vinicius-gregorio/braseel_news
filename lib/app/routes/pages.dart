import 'package:braseel_noticias/app/modules/Initial/initial_binding.dart';
import 'package:braseel_noticias/app/modules/Initial/initial_view.dart';
import 'package:braseel_noticias/app/modules/home/home_binding.dart';
import 'package:braseel_noticias/app/modules/home/home_page.dart';
import 'package:braseel_noticias/app/modules/login/login_binding.dart';
import 'package:braseel_noticias/app/modules/login/login_view.dart';
import 'package:get/get.dart';
import './routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    )
  ];
}
