import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/constants/icons.dart';
import 'package:voyself_admin_panel/views/sections/locations/widgets/add_location.dart';

class TopBar extends StatelessWidget {
  final String text;
  final int? selectedIndex;

  const TopBar({Key? key, required this.text, this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;

    return AppBar(
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.textBlack,
          ),
        ),
      ),
      leading: sw > 1100
          ? const SizedBox()
          : Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    FeatherIcons.menu,
                    color: Colors.black,
                  )),
            ),
      actions: [
        if (selectedIndex == 1 || selectedIndex == 2 || selectedIndex == 3)
          Padding(
            padding: const EdgeInsets.only(top: 13.0, right: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  onPressed: () {
                    _handleSearchTap(context);
                  },
                ),
              ),
            ),
          ),
        if (selectedIndex == 1)
          Padding(
            padding: const EdgeInsets.only(
              top: 13.0,
              right: 10,
            ),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const DialogueBox();
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  child: Icon(
                    Icons.add,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
          )
        else
          const SizedBox(),
        const Padding(
          padding: EdgeInsets.only(top: 13, right: 13),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/dp.jpg"),
          ),
        ),
      ],
    );
  }

  void _handleSearchTap(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: 120,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: w * 1, horizontal: w * 3),
                      hintText: "Enter place name",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 120,
                  child: MaterialButton(
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26)),
                    color: AppColors.primaryColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
