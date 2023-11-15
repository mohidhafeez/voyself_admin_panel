import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:voyself_admin_panel/constants/colors.dart';
import 'package:voyself_admin_panel/model/model.dart';
import 'package:voyself_admin_panel/views/widgets/sidebar.dart';
import 'package:voyself_admin_panel/views/widgets/topbar.dart';

class MobileBookings extends StatelessWidget {
  MobileBookings({super.key});

  @override
  Widget build(BuildContext context) {
    List<Booking> bookingDetails = [
      Booking(
          bookingID: 12312,
          clientName: "Kaze",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "JV",
          bookingPlace: "Burj Khalifa",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: false,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Ronnie",
          bookingPlace: "Effile Tower",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Vick",
          bookingPlace: "Colosome",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "JV",
          bookingPlace: "Burj Khalifa",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: false,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Lzzy",
          bookingPlace: "Opera House",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "JV",
          bookingPlace: "Burj Khalifa",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: false,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "Earl",
          bookingPlace: "Taj Mehal",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: true,
          date: DateTime(2023, 11, 04)),
      Booking(
          bookingID: 12312,
          clientName: "JV",
          bookingPlace: "Burj Khalifa",
          guest: "5",
          checkIn: DateTime(2023, 11, 04, 09, 30),
          checkOut: DateTime(2023, 11, 04, 18, 30),
          payment: "Credit Card",
          status: false,
          date: DateTime(2023, 11, 04)),
    ];
    double h = MediaQuery.of(context).size.height * 0.01;
    double w = MediaQuery.of(context).size.width * 0.01;
    double sw = MediaQuery.of(context).size.width;
    // DateTime dateTime = ;
    //  String date = DateFormat('yyyy-MM-dd').format(dateTime);
    //                 String checkin =
    //                     DateFormat('yyyy-MM-dd HH:mm a').format(checkinTime);
    //                 String checkout =
    //                     DateFormat('yyyy-MM-dd HH:mm a').format(checkoutTime);
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: TopBar(
            text: "Bookings",
            selectedIndex: 3,
          )),
      drawer: const SideBarCustom(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(
                  label: Text('Booking ID',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text('Client Name',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text('Booking Place',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text('Guest',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text('Check-In',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text('Check-Out',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text('Payment',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text('Status',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlack))),
              DataColumn(
                  label: Text(
                'Date',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textBlack),
              )),
            ],
            rows: bookingDetails.map((booking) {
              return DataRow(cells: [
                DataCell(Text(booking.bookingID.toString(),
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ))),
                DataCell(Text(booking.clientName,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ))),
                DataCell(Text(booking.bookingPlace,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ))),
                DataCell(Text(booking.guest,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ))),
                DataCell(Text(DateFormat('yyyy-MM-dd').format(booking.checkOut),
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ))),
                DataCell(Text(DateFormat('yyyy-MM-dd').format(booking.checkOut),
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ))),
                DataCell(Text(booking.payment,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textBlack,
                    ))),
                DataCell(Text(
                  booking.status ? 'Approved' : 'Pending',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: booking.status ? Colors.green : Colors.orange),
                )),
                DataCell(Text(
                  DateFormat('yyyy-MM-dd').format(booking.date),
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.textBlack,
                  ),
                )),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
