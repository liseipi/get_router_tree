import 'package:get/get.dart';

import '../screen/pages/account/account_binding.dart';
import '../screen/pages/account/account_page.dart';
import '../screen/pages/home/home_binding.dart';
import '../screen/pages/home/home_page.dart';
import '../screen/pages/index/index_binding.dart';
import '../screen/pages/index/index_page.dart';
import '../screen/pages/setting/setting_binding.dart';
import '../screen/pages/setting/setting_page.dart';
import '../screen/root/root_page.dart';
import '../screen/root/root_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootPage(),
      bindings: [RootBinding()],
      preventDuplicates: true,
      participatesInRootNavigator: true,
      children: [
        GetPage(
          name: '/index',
          preventDuplicates: true,
          participatesInRootNavigator: false,
          page: () => const IndexPage(),
          bindings: [IndexBinding()],
          title: null,
          children: [
            GetPage(
              name: '/home',
              page: () => const HomePage(),
              bindings: [HomeBinding()],
            ),
            GetPage(
              name: '/account',
              page: () => const AccountPage(),
              bindings: [AccountBinding()],
            ),
          ],
        ),
        GetPage(
          name: '/setting',
          page: () => const SettingPage(),
          bindings: [SettingBinding()],
        ),
      ],
    ),
  ];
}
