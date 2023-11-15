import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/sections/dashboard/components/dashboard_tile.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class DesktopDashboard extends StatefulWidget {
  const DesktopDashboard({super.key});

  @override
  State<DesktopDashboard> createState() => _DesktopDashboardState();
}

class _DesktopDashboardState extends State<DesktopDashboard> {
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
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: TopBar(text: "Dashboard")),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 5,
                    child: GridView.builder(
                      itemCount: tileDetails.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1, crossAxisCount: 5),
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8),
                            child: DashboardTile(index: index));
                      },
                    ),
                  ),
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
                      // ignore: prefer_const_constructors
                      SizedBox(
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
                  AspectRatio(
                    aspectRatio: 3.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: h * 50,
                          width: w * 35,
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
                          height: h * 50,
                          width: w * 35,
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
                  )
                ],
              ),
            ),
          )),
    );
  }
}
