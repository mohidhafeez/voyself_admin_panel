import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color black = const Color(0xFF272829);
  static Color textBlack = const Color.fromARGB(255, 0, 0, 0);

  // static Color whiteClr = const Color.fromARGB(255, 54, 56, 57);
  // static Color primaryColor = const Color(0xFFFE7600);
  static Color primaryColor = const Color(0xFF007FE8);
  static Color navTileColor = const Color.fromARGB(255, 0, 97, 232);
  static Color whiteClr = const Color(0xFFFFFFFF);
  static Color liteBlue = const Color(0xffA5D8FF);
  static Color darkBlue = const Color(0xff6741D9);
  static Color liteRed = const Color(0xffFFC9C9);
  static Color darkRed = const Color(0xffE03131);
  static Color liteYellow = const Color(0xffFFEC99);
  static Color darkYellow = const Color(0xffF08C00);
  static Color liteGreen = const Color(0xFFB2F2BB);
  static Color darkGreen = const Color(0xFF2F9E44);

  static List<Color> randomAccentColors = const [
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFFF2921D),
    Color(0xFF70B7E5),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFFFF5876),
    Color(0xFF007FE8),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
    Color(0xFF70B7E5),
    Color(0xFFFF5876),
    Color(0xFFF3D332),
    Color(0xFFC193DC),
    Color(0xFF007FE8),
    Color(0xFFF2921D),
    Color(0xFF24BFB2),
    Color(0xFF619BF2),
  ];
}
