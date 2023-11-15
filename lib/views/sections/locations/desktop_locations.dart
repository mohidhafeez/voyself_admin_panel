import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/constants/icons.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/sections/locations/widgets/location_tile.dart';
import 'package:voyself_admin_panel/views/widgets/circle_button.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class DesktopLocation extends StatefulWidget {
  const DesktopLocation({super.key});

  @override
  State<DesktopLocation> createState() => _DesktopLocationState();
}

class _DesktopLocationState extends State<DesktopLocation> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: TopBar(
              text: "Locations",
              selectedIndex: 1,
            )),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.5,
                      crossAxisSpacing: (sw < 1500)
                          ? 5 * w
                          : (sw < 1250)
                              ? 10
                              : 15 * w),
                  itemCount: locationTileDetails.length,
                  itemBuilder: (context, index) {
                    return LocationCustomTile(
                        image: locationTileDetails[index].image,
                        locationName: locationTileDetails[index].locationName,
                        countryName: locationTileDetails[index].countryName);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
