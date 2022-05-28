import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'root_controller.dart';

class RootPage extends GetView<RootController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      routerDelegate: GetDelegate(),
      builder: (context, delegate, navConfig) {
        return Scaffold(
          body: GetRouterOutlet(
            anchorRoute: '/',
            initialRoute: '/index',
            // delegate: delegate,
            // key: Get.nestedKey(1),
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: const Text("++"),
          // ),
        );
      },
    );
  }
}
