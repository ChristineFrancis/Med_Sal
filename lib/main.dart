import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/controller/login-controller.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/core/dark-mode/dark-mode.dart';
import 'package:med_sal/core/localization/change-locale.dart';
import 'package:med_sal/core/localization/translation.dart';
import 'package:med_sal/core/services/services.dart';
import 'package:med_sal/routes.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    DarkModeController darkModeController = Get.put(DarkModeController());
    Get.lazyPut(()=>LoginControllerImp(),fenix: true);
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: localeController.language,
      debugShowCheckedModeBanner: false,
      theme: darkModeController.theme,
      initialRoute: AppRoute.splash,
      getPages: routes,
    );
  }
}



