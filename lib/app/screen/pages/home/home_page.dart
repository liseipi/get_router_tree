import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page11"),
      ),
      body: const Text('Home page aaa11'),
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
  }
}
