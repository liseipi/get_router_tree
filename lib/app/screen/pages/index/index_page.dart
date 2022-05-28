import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index_controller.dart';

class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      routerDelegate: GetDelegate(),
      builder: (context, delegate, currentRoute) {
        // print(delegate);
        // print(delegate.currentConfiguration);
        // print(delegate.navigatorObservers);
        // print(delegate.build(context));

        // final delegate = context.navigation;
        //This router outlet handles the appbar and the bottom navigation bar
        // final currentLocation = context.location;
        var currentIndex = 0;
        // if (currentLocation.startsWith('/index/my') == true) {
        //   currentIndex = 1;
        // }
        return Scaffold(
          appBar: AppBar(
            title: const Text("Index Page"),
          ),
          body: GetRouterOutlet(
            anchorRoute: '/index',
            initialRoute: '/index/home',

            //delegate: Get.nestedKey(Routes.HOME),
            // key: Get.nestedKey(Routes.HOME),
          ),
          // body: Column(
          //   children: [
          //     const Text("Index page"),
          //     ElevatedButton(
          //       onPressed: () {
          //         Get.toNamed('/setting');
          //       },
          //       child: const Text("GO Setting Page"),
          //     ),
          //   ],
          // ),
          // body: GetRouterOutlet(
          //   anchorRoute: '/index',
          //   initialRoute: '/home',
          //   delegate: delegate,
          //   // key: Get.nestedKey(2),
          //   // filterPages: (afterAnchor) {
          //   //   print(afterAnchor);
          //   //   print('dddddddddddddddddd');
          //   //   print(afterAnchor.take(1));
          //   //   return afterAnchor.take(1);
          //   // },
          // ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Text("===="),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              switch (value) {
                case 0:
                  delegate.toNamed('/index/home');
                  break;
                case 1:
                  delegate.toNamed('/account');
                  // delegate.toNamed('/index/account');
                  break;
                default:
              }
            },
            items: const [
              // _Paths.HOME + [Empty]
              BottomNavigationBarItem(
                // icon: Icon(Icons.home),
                icon: Padding(
                  padding: EdgeInsets.only(top: 28, bottom: 5),
                  child: Icon(Icons.home),
                ),
                label: 'Home',
              ),
              // _Paths.HOME + Routes.PROFILE
              BottomNavigationBarItem(
                // icon: Icon(Icons.account_box_rounded),
                icon: Padding(
                  padding: EdgeInsets.only(top: 28, bottom: 5),
                  child: Icon(Icons.account_box_rounded),
                ),
                label: 'Profile',
              ),
            ],
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
