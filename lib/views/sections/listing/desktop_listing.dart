import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/sections/listing/components/custom_dialoguebox.dart';
import 'package:voyself_admin_panel/views/sections/listing/components/desktop_listing_tile.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class DesktopListing extends StatefulWidget {
  const DesktopListing({super.key});

  @override
  State<DesktopListing> createState() => _DesktopListingState();
}

class _DesktopListingState extends State<DesktopListing> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: TopBar(
              text: "Listings",
              selectedIndex: 2,
            )),
        body: SizedBox(
          height: 100 * h,
          width: 100 * w,
          // color: Colors.red,
          child: ListView.builder(
            itemCount: listingDetails.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  DesktopListingTile(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => Dialog.fullscreen(
                                child: CustomDialogueBox(
                                    data: listingDetails[index]),
                              ));
                    },
                    image: listingDetails[index].image,
                    locationName: listingDetails[index].locationName,
                    locationCity: listingDetails[index].locationCity,
                    rating: listingDetails[index].rating,
                    price: listingDetails[index].min,
                  ),
                ],
              );
            },
          ),
        ));
  }
}
