import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/constants/icons.dart';
import 'package:voyself_admin_panel/views/widgets/circle_button.dart';

class LocationCustomTile extends StatelessWidget {
  String image;
  String locationName;
  String countryName;
  LocationCustomTile(
      {super.key,
      required this.countryName,
      required this.image,
      required this.locationName});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: sw < 1100 ? 25 * h : 300,
              width: sw < 300 ? 120 : 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationName,
                      style: TextStyle(
                          fontSize: sw < 1200 ? 18 : 24,
                          color: AppColors.textBlack,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      countryName,
                      style: TextStyle(
                        fontSize: sw < 1200 ? 14 : 18,
                        color: AppColors.textBlack.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomCircleButton(
                      borderColor: AppColors.darkYellow,
                      bgColor: AppColors.liteYellow,
                      icon: AppIcons.edit,
                      onTap: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomCircleButton(
                      borderColor: AppColors.darkBlue,
                      bgColor: AppColors.liteBlue,
                      icon: AppIcons.delete,
                      onTap: () {}),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
