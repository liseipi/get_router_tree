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
        print(GetDelegate());

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
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: const Text("+"),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              switch (value) {
                case 0:
                  delegate.toNamed('/index/home');
                  break;
                case 1:
                  delegate.toNamed('/index/account');
                  // delegate.toNamed('/account');
                  break;
                default:
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 28, bottom: 5),
                  child: Icon(Icons.home),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 28, bottom: 5),
                  child: Icon(Icons.account_box_rounded),
                ),
                label: 'Account',
              ),
            ],
          ),

        );
      },
    );

  }
}
