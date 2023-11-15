import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class DesktopBookings extends StatelessWidget {
  const DesktopBookings({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: TopBar(
            text: "Bookings",
            selectedIndex: 3,
          )),
      body: SizedBox(
        height: h * 100,
        width: w * 100,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 1, vertical: h * 2),
              child: Table(
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Center(
                      child: Text(
                        "Booking ID",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    TableCell(
                        child: Center(
                      child: Text(
                        "Client Name",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    TableCell(
                        child: Center(
                      child: Text(
                        "Booking For",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    TableCell(
                        child: Center(
                      child: Text(
                        "Guests",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    TableCell(
                        child: Text(
                      "Check-in",
                      style: TextStyle(
                          color: AppColors.textBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                    TableCell(
                        child: Text(
                      "Check-out",
                      style: TextStyle(
                          color: AppColors.textBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                    TableCell(
                        child: Center(
                      child: Text(
                        "Payment",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    TableCell(
                        child: Center(
                      child: Text(
                        "Status",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    TableCell(
                        child: Center(
                      child: Text(
                        "Date",
                        style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                  ]),
                ],
              ),
            ),
            Divider(
              color: AppColors.black.withOpacity(0.2),
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: bookingDetails.length,
                  itemBuilder: (context, index) {
                    DateTime dateTime = bookingDetails[index]
                        .date; // Replace this with your DateTime object
                    DateTime checkinTime = bookingDetails[index]
                        .checkIn; // Replace this with your DateTime object
                    DateTime checkoutTime = bookingDetails[index]
                        .checkOut; // Replace this with your DateTime object
                    String date = DateFormat('yyyy-MM-dd').format(dateTime);
                    String checkin =
                        DateFormat('yyyy-MM-dd HH:mm a').format(checkinTime);
                    String checkout =
                        DateFormat('yyyy-MM-dd HH:mm a').format(checkoutTime);
                    return Column(
                      children: [
                        SizedBox(
                          height: h * 1,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: w * 1),
                          child: Table(
                            // defaultVerticalAlignment:
                            // TableCellVerticalAlignment.middle,
                            children: [
                              TableRow(children: [
                                TableCell(
                                    child: Center(
                                  child: Text(
                                    bookingDetails[index].bookingID.toString(),
                                    style: TextStyle(
                                      color: AppColors.textBlack,
                                      fontSize: 18,
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Text(bookingDetails[index].clientName,
                                      style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontSize: 18,
                                      )),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Text(
                                    bookingDetails[index].bookingPlace,
                                    style: TextStyle(
                                      color: AppColors.textBlack,
                                      fontSize: 18,
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Text(
                                    bookingDetails[index].guest,
                                    style: TextStyle(
                                      color: AppColors.textBlack,
                                      fontSize: 18,
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Text(
                                    checkin,
                                    style: TextStyle(
                                      color: AppColors.textBlack,
                                      fontSize: 18,
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Text(
                                    checkout,
                                    style: TextStyle(
                                      color: AppColors.textBlack,
                                      fontSize: 18,
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Text(
                                    bookingDetails[index].payment,
                                    style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontSize: h * 2.7),
                                  ),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Text(
                                        bookingDetails[index].status
                                            ? "Approved"
                                            : "Pending",
                                        style: TextStyle(
                                            color: bookingDetails[index].status
                                                ? Colors.green
                                                : const Color.fromARGB(
                                                    255, 255, 124, 16),
                                            fontSize: sw < 1200 ? 16 : 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Center(
                                  child: Text(
                                    date,
                                    style: TextStyle(
                                      color: AppColors.textBlack,
                                      fontSize: 18,
                                    ),
                                  ),
                                )),
                              ])
                            ],
                          ),
                        ),
                        Divider(
                          color: AppColors.black.withOpacity(0.3),
                          indent: 25,
                          endIndent: 25,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
