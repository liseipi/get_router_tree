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
            delegate: delegate,
            // key: Get.nestedKey(1),
            // filterPages: (afterAnchor) {
            //   print(afterAnchor);
            //   print('dddddddddddddddddd');
            //   print(afterAnchor.take(1));
            //   return afterAnchor.take(1);
            // },
          ),
          floatingActionButton:  FloatingActionButton(
              // FloatingActionButtonLocation:
              onPressed: () {  },
            child: const Text("++"),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: 0,
          //   items: const [
          //     BottomNavigationBarItem(
          //       backgroundColor: Colors.blue,
          //       icon: Icon(Icons.home),
          //     ),
          //     BottomNavigationBarItem(
          //       backgroundColor: Colors.red,
          //       icon: Icon(Icons.person),
          //     ),
          //   ],
          // ),
        );
      },
    );
    // return GetRouterOutlet(
    //   anchorRoute: '/',
    //   initialRoute: '/index',
    //   // delegate: GetDelegate(),
    //   key: Get.nestedKey(null),
    // );
    // return RouterOutlet.builder(
    //   delegate: Get.nestedKey(null),
    //   builder: (context) {
    //     return Scaffold();
    //     // final title = context.location;
    //     // return Scaffold(
    //     //   drawer: DrawerWidget(),
    //     //   appBar: AppBar(
    //     //     title: Text(title),
    //     //     centerTitle: true,
    //     //   ),
    //     //   //body: HomeView(),
    //     //
    //     //   body: GetRouterOutlet(
    //     //     initialRoute: Routes.HOME,
    //     //     delegate: Get.nestedKey(null),
    //     //     anchorRoute: '/',
    //     //     filterPages: (afterAnchor) {
    //     //       // print(afterAnchor);
    //     //       // print('dddddddddddddddddd');
    //     //       // print(afterAnchor.take(1));
    //     //       return afterAnchor.take(1);
    //     //     },
    //     //   ),
    //     // );
    //   },
    // );
  }
}
