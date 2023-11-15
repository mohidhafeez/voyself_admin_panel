import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyself_admin_panel/utils/responsive/desktop_body.dart';
import 'package:voyself_admin_panel/utils/responsive/mobile_body.dart';
import 'package:voyself_admin_panel/utils/responsive/responsive_layout.dart';
import 'package:voyself_admin_panel/utils/responsive/tab_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}
