import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/controller/navbar_controller.dart';

class SideBarCustom extends StatefulWidget {
  const SideBarCustom({super.key});

  @override
  State<SideBarCustom> createState() => _SideBarCustomState();
}

class _SideBarCustomState extends State<SideBarCustom> {
  List<String> navBarTabs = [
    "Dashboard",
    "Location",
    "Listing",
    "Bookings",
    "Notifications"
  ];
  List<IconData> icons = [
    FeatherIcons.pieChart,
    FeatherIcons.mapPin,
    FeatherIcons.list,
    FeatherIcons.bookmark,
    FeatherIcons.bell,
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.height * 0.01;
    NavBarController navBarController = Get.put(NavBarController());

    return Container(
      width: 270,
      decoration: BoxDecoration(
          color: AppColors.whiteClr,
          border: Border(
              right: BorderSide(color: AppColors.black.withOpacity(0.5)))),
      child: Column(
        children: [
          SizedBox(
            height: 63,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/appIcon.png"),
                ),
                SizedBox(
                  width: w * 1,
                ),
                Center(
                  child: Text(
                    "Voyself",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: navBarTabs.length,
                itemBuilder: (context, index) {
                  return Obx(() => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 600),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: navBarController.index.value == index
                                ? AppColors.navTileColor
                                : Colors.white,
                          ),
                          child: ListTile(
                            leading: Icon(
                              icons[index],
                              color: navBarController.index.value == index
                                  ? AppColors.whiteClr
                                  : Colors.grey,
                            ),
                            title: Text(
                              navBarTabs[index],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: navBarController.index.value == index
                                      ? AppColors.whiteClr
                                      : AppColors.black,
                                  fontWeight:
                                      navBarController.index.value == index
                                          ? FontWeight.w500
                                          : FontWeight.w400),
                            ),
                            onTap: () {
                              navBarController.index.value = index;
                            },
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
