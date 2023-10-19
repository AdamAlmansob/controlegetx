import 'package:controlgetx/core/localization/changelocal.dart';
import 'package:controlgetx/core/localization/translation.dart';
import 'package:controlgetx/core/services/services.dart';
import 'package:controlgetx/routes.dart';
import 'package:controlgetx/view/screen/configure_app/configure_app.dart';
//import 'package:controlgetx/view/widget/configur/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      //theme: controller.appTheme,
      //theme: ThemeApp.customDarkTheme,

      theme: ThemeData.light(),

      // routes: routes,
      getPages: routes,
      home: const ConfigureApplication(),
    );
  }
}
