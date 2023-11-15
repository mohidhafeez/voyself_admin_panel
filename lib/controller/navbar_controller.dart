import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voyself_admin_panel/views/sections/bookings/desktop_booking.dart';
import 'package:voyself_admin_panel/views/sections/bookings/mobile_booking.dart';
import 'package:voyself_admin_panel/views/sections/bookings/tablet_booking.dart';
import 'package:voyself_admin_panel/views/sections/dashboard/desktop_dashboard.dart';
import 'package:voyself_admin_panel/views/sections/dashboard/mobile_dashboard.dart';
import 'package:voyself_admin_panel/views/sections/dashboard/tablet_dashboard.dart';
import 'package:voyself_admin_panel/views/sections/listing/desktop_listing.dart';
import 'package:voyself_admin_panel/views/sections/listing/mobile_listing.dart';
import 'package:voyself_admin_panel/views/sections/listing/tablet_listing.dart';
import 'package:voyself_admin_panel/views/sections/locations/desktop_locations.dart';
import 'package:voyself_admin_panel/views/sections/locations/mobile_location.dart';
import 'package:voyself_admin_panel/views/sections/locations/tablet_location.dart';
import 'package:voyself_admin_panel/views/sections/notifications/desktop_notifications.dart';
import 'package:voyself_admin_panel/views/sections/notifications/mobile_notifications.dart';
import 'package:voyself_admin_panel/views/sections/notifications/tablet_notifications.dart';

class NavBarController extends GetxController {
  RxInt index = 0.obs;

  var desktopPages = [
    const DesktopDashboard(),
    const DesktopLocation(),
    const DesktopListing(),
    const DesktopBookings(),
    const DesktopNotification(),
  ];
  var tabPages = [
    const TabDashboard(),
    const TabLocations(),
    const TabListing(),
    TabBookings(),
    const TabNotifications(),
  ];
  var mobilePages = [
    const MobileDashboard(),
    const MobileLocations(),
    const MobileListing(),
    MobileBookings(),
    const MobileNotifications(),
  ];
}
