import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/views/widgets/sidebar.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class TabNotifications extends StatelessWidget {
  const TabNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: TopBar(text: "Notifications")),
      drawer: const SideBarCustom(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Title",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlack),
            ),
            SizedBox(
              height: h * 1,
            ),
            SizedBox(
              width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    hintText: "Enter Notification's Title",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.darkBlue, width: 1.5),
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            SizedBox(
              height: h * 1,
            ),
            Text(
              "Discription",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlack),
            ),
            SizedBox(
              height: h * 1,
            ),
            SizedBox(
              width: 400,
              child: TextFormField(
                minLines: 5,
                maxLines: 5,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    hintText: "Enter Notification's Discription",
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.darkBlue, width: 1.5),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(
              height: h * 2,
            ),
            Center(
              child: SizedBox(
                width: 130,
                child: MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26)),
                  color: AppColors.primaryColor,
                  onPressed: () {},
                  child: const Text(
                    "Send",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
