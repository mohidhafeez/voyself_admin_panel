import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/sections/locations/widgets/location_tile.dart';
import 'package:voyself_admin_panel/views/widgets/sidebar.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class MobileLocations extends StatelessWidget {
  const MobileLocations({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: TopBar(
              text: "Locations",
              selectedIndex: 1,
            )),
        drawer: const SideBarCustom(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100 * h,
                width: 100 * w,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                      itemCount: locationTileDetails.length,
                      itemBuilder: (context, index) {
                        return LocationCustomTile(
                            image: locationTileDetails[index].image,
                            locationName:
                                locationTileDetails[index].locationName,
                            countryName:
                                locationTileDetails[index].countryName);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
