import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'setting_controller.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting Page"),
      ),
      body: const Text('SettingPage'),
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
