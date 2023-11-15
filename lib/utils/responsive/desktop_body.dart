import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:voyself_admin_panel/controller/navbar_controller.dart';
import 'package:voyself_admin_panel/views/sections/dashboard/desktop_dashboard.dart';
import 'package:voyself_admin_panel/views/widgets/sidebar.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarController navBarController = Get.put(NavBarController());

    return Scaffold(
      body: Row(
        children: [
          const SizedBox(
              width: 270, height: double.infinity, child: SideBarCustom()),
          Expanded(
              child: Obx(() =>
                  navBarController.desktopPages[navBarController.index.value]))
        ],
      ),
    );
  }
}
