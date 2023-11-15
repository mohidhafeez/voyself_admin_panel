import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/sections/dashboard/components/dashboard_tile.dart';
import 'package:voyself_admin_panel/views/widgets/sidebar.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({super.key});

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2005),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEEE MM, yyyy').format(_dateTime);
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70), child: TopBar(text: "Dashboard")),
      drawer: const SideBarCustom(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // SizedBox(
            //   height: 500,
            //   child: GridView.builder(
            //       itemCount: tileDetails.length,
            //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 2),
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.all(15.0),
            //           child: DashboardTile(
            //               index: index,
            //               firstFontSize: h * 1,
            //               secFontSize: h * 2),
            //         );
            //       }),
            // ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tileDetails.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: DashboardTile(index: index),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            //date
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  formattedDate,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      _showDatePicker();
                    },
                    icon: const Icon(
                      CupertinoIcons.calendar,
                      color: Colors.black,
                    ))
              ],
            ),
            //charts
            SizedBox(
              height: h * 40,
              width: w * 100,
              child: SfCartesianChart(
                title: ChartTitle(
                  text: "Users",
                  textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.textBlack,
                      fontSize: h * 2.5,
                      fontWeight: FontWeight.w500),
                ),
                series: [
                  LineSeries(
                      width: 4,
                      color: Colors.blue,
                      dataSource: userDetails,
                      xValueMapper: (UsersData activeUsers, _) =>
                          activeUsers.days,
                      yValueMapper: (UsersData activeUsers, _) =>
                          activeUsers.activeUser),
                  LineSeries(
                      width: 3,
                      dataSource: userDetails,
                      color: Colors.red,
                      xValueMapper: (UsersData nonActiveUsers, _) =>
                          nonActiveUsers.days,
                      yValueMapper: (UsersData nonActiveUsers, _) =>
                          nonActiveUsers.nonActiveUser),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: h * 40,
              width: w * 100,
              child: SfCartesianChart(
                title: ChartTitle(
                  text: "Places",
                  textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      color: AppColors.textBlack,
                      fontSize: h * 2.5,
                      fontWeight: FontWeight.w500),
                ),
                series: [
                  LineSeries(
                      color: Colors.red,
                      width: 4,
                      dataSource: placesDetails,
                      xValueMapper: (Places currentPlaces, _) =>
                          currentPlaces.days,
                      yValueMapper: (Places currentPlaces, _) =>
                          currentPlaces.currentPlaces),
                  LineSeries(
                      color: Colors.blue,
                      width: 4,
                      dataSource: placesDetails2,
                      xValueMapper: (Places currentPlaces, _) =>
                          currentPlaces.days,
                      yValueMapper: (Places currentPlaces, _) =>
                          currentPlaces.currentPlaces),
                  LineSeries(
                      color: Colors.green,
                      width: 4,
                      dataSource: placesDetail3,
                      xValueMapper: (Places currentPlaces, _) =>
                          currentPlaces.days,
                      yValueMapper: (Places currentPlaces, _) =>
                          currentPlaces.currentPlaces),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
