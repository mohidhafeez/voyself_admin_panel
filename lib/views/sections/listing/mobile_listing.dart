import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/sections/listing/components/custom_dialoguebox.dart';
import 'package:voyself_admin_panel/views/sections/listing/components/desktop_listing_tile.dart';
import 'package:voyself_admin_panel/views/sections/listing/components/mobile_listing_tile.dart';
import 'package:voyself_admin_panel/views/widgets/sidebar.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class MobileListing extends StatelessWidget {
  const MobileListing({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: TopBar(
              text: "Listings",
              selectedIndex: 2,
            )),
        drawer: const SideBarCustom(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: h * 100,
                width: w * 100,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        MobileListingTile(
                            height: 250,
                            width: sw < 350 ? 100 : 160,
                            onTap: () {},
                            image: listingDetails[index].image,
                            locationName: listingDetails[index].locationName,
                            locationCity: listingDetails[index].locationCity,
                            rating: listingDetails[index].rating,
                            price: listingDetails[index].min),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
