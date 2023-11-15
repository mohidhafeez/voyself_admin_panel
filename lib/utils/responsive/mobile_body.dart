import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:voyself_admin_panel/controller/navbar_controller.dart';
import 'package:voyself_admin_panel/views/widgets/sidebar.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  NavBarController navBarController = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Obx(
              () => navBarController.mobilePages[navBarController.index.value]),
        ),
      ],
    ));
  }
}
