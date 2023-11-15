import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyself_admin_panel/controller/navbar_controller.dart';

class TabScaffold extends StatefulWidget {
  const TabScaffold({super.key});

  @override
  State<TabScaffold> createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabScaffold> {
  NavBarController navBarController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Obx(
              () => navBarController.tabPages[navBarController.index.value]),
        ),
      ],
    ));
  }
}
