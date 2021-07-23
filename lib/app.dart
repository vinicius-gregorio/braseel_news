import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/routes.dart';
import 'app/routes/pages.dart';
import 'app/theme/app_theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DM Conta',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
      //initialBinding: ,
    );
  }
}
