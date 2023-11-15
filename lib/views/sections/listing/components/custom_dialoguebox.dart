import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/model/model.dart';

class CustomDialogueBox extends StatelessWidget {
  final Listing data;
  const CustomDialogueBox({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 13,
          ),
          child: Text(
            "Details",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textBlack),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: h * 2.0, horizontal: w * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //     height: h * 10,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           "Details",
              //           style: TextStyle(
              //             fontSize: 36,
              //             color: AppColors.black,
              //           ),
              //         ),
              //         IconButton(
              //             onPressed: () {
              //               Navigator.pop(context);
              //             },
              //             icon: Icon(
              //               size: 30,
              //               Icons.close,
              //               color: AppColors.black,
              //             ))
              //       ],
              //     )),
              // Divider(color: AppColors.primaryColor, thickness: 3),
              // //main
              // SizedBox(
              //   height: h * 2,
              // ),
              sw < 480
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            data.image,
                            height: 250,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: h * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              data.locationName,
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              data.locationCity,
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Budget:",
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "\$${data.min}-\$${data.max}",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Reviews:",
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  data.rating.toStringAsFixed(1),
                                  style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: w * 1,
                                ),
                                RatingBarIndicator(
                                  rating: data.rating,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 24,
                                  direction: Axis.horizontal,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            data.image,
                            height: 250,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: w * 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data.locationName,
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                data.locationCity,
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Budget:",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "\$${data.min}-\$${data.max}",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Reviews:",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    data.rating.toStringAsFixed(1),
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: w * 1,
                                  ),
                                  RatingBarIndicator(
                                    rating: data.rating,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 24,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
              SizedBox(
                height: h * 1,
              ),
              SizedBox(
                // color: Colors.green,

                width: w * 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discription",
                      style: TextStyle(
                          fontSize: 24,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      data.discription,
                      style: TextStyle(color: AppColors.black, fontSize: 18),
                    ),
                    SizedBox(
                      height: h * 1,
                    ),
                    Text(
                      "Features",
                      style: TextStyle(
                          fontSize: 24,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: h * 1,
                    ),
                    SizedBox(
                      height: 40,
                      // color: Colors.amber,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.features.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: w * 1),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.primaryColor),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: w * 3,
                                ),
                                child: Center(
                                    child: Text(
                                  data.features[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: h * 1,
                    ),
                    Text(
                      "Facilites",
                      style: TextStyle(
                          fontSize: 24,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: h * 1,
                    ),
                    SizedBox(
                      height: 40,
                      // color: Colors.amber,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.facilites.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: w * 1),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.primaryColor),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: w * 3,
                                ),
                                child: Center(
                                    child: Text(
                                  data.facilites[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
