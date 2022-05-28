import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_controller.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Page"),
      ),
      body: Column(
        children: [
          const Text("Account page"),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/setting');
            },
            child: const Text("GO Setting Page"),
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
  }
}
