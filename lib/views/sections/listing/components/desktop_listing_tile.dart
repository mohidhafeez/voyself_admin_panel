import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/constants/icons.dart';
import 'package:voyself_admin_panel/views/widgets/circle_button.dart';

class DesktopListingTile extends StatelessWidget {
  double height;
  double width;
  final String image;
  final String locationName;
  final String locationCity;
  final double rating;
  final int price;
  VoidCallback onTap;
  DesktopListingTile(
      {super.key,
      this.height = 300,
      this.width = 200,
      required this.onTap,
      required this.image,
      required this.locationName,
      required this.locationCity,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: w * 1,
          ),
          height: h * 20,
          // width: w * 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: w * 3,
                  ),
                  //details
                  SizedBox(
                    height: 300,
                    width: sw < 780 ? 150 : null,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          locationName,
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: sw < 670 ? 20 : 24,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          locationCity,
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text(
                              rating.toStringAsFixed(1),
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: w * 0.5,
                            ),
                            RatingBarIndicator(
                              rating: rating,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 20,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                        Text(
                          "\$ $price",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              sw < 780
                  ? Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: StaggeredGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: sw < 650 ? 15 : 20,
                          children: [
                            CustomCircleButton(
                                onTap: () {},
                                bgColor: AppColors.liteGreen,
                                borderColor: AppColors.darkGreen,
                                icon: AppIcons.approve),
                            CustomCircleButton(
                                onTap: () {},
                                bgColor: AppColors.liteRed,
                                borderColor: AppColors.darkRed,
                                icon: AppIcons.disapprove),
                            CustomCircleButton(
                                onTap: () {},
                                bgColor: AppColors.liteYellow,
                                borderColor: AppColors.darkYellow,
                                icon: AppIcons.edit),
                            CustomCircleButton(
                                onTap: () {},
                                bgColor: AppColors.liteBlue,
                                borderColor: AppColors.darkBlue,
                                icon: AppIcons.delete),
                          ],
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        CustomCircleButton(
                            onTap: () {},
                            bgColor: AppColors.liteGreen,
                            borderColor: AppColors.darkGreen,
                            icon: AppIcons.approve),
                        SizedBox(
                          width: w * 0.8,
                        ),
                        CustomCircleButton(
                            onTap: () {},
                            bgColor: AppColors.liteRed,
                            borderColor: AppColors.darkRed,
                            icon: AppIcons.disapprove),
                        SizedBox(
                          width: w * 1,
                        ),
                        CustomCircleButton(
                            onTap: () {},
                            bgColor: AppColors.liteYellow,
                            borderColor: AppColors.darkYellow,
                            icon: AppIcons.edit),
                        SizedBox(
                          width: w * 1,
                        ),
                        CustomCircleButton(
                            onTap: () {},
                            bgColor: AppColors.liteBlue,
                            borderColor: AppColors.darkBlue,
                            icon: AppIcons.delete),
                      ],
                    ),
            ],
          )),
    );
  }
}
