import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialBinding: BindingsBuilder(() {
        // Get.put(SplashService());
        // Get.put(AuthService());
      }),
      getPages: AppPages.routes,
      initialRoute: '/index',
      // builder: (context, child) {
      //   return FutureBuilder<void>(
      //     key: ValueKey('initFuture'),
      //     future: Get.find<SplashService>().init(),
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.done) {
      //         return child ?? SizedBox.shrink();
      //       }
      //       return SplashView();
      //     },
      //   );
      // },
      // routeInformationParser: GetInformationParser(
      //     // initialRoute: Routes.HOME,
      //     ),
      // routerDelegate: GetDelegate(
      //   backButtonPopMode: PopMode.History,
      //   preventDuplicateHandlingMode:
      //       PreventDuplicateHandlingMode.ReorderRoutes,
      // ),
    ),
  );
}
