import 'package:flutter/material.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/model/model.dart';

class DashboardTile extends StatelessWidget {
  final int index;
  final double firstFontSize;
  final double secFontSize;

  DashboardTile({
    Key? key, // Corrected this line
    required this.index,
    this.firstFontSize = 20,
    this.secFontSize = 36,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.randomAccentColors[index],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              tileDetails[index].text,
              style: TextStyle(
                fontSize: firstFontSize,
                color: Colors.grey.shade200,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              tileDetails[index].value.toString(),
              style: TextStyle(
                fontSize: secFontSize,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
