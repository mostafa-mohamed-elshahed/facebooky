import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mr_ahmed_salah_task_facebook/shared/styles/colors.dart';


ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      fontFamily: 'Jost',
      color: HexColor("1877f4"),
      fontSize: 32.0,
      fontWeight: FontWeight.w800,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: false,
    selectedIconTheme: IconThemeData(
      size: 32,
      color:  HexColor("1877f4")
    ),
    unselectedIconTheme: IconThemeData(
        size: 24,
        color: Colors.grey[600]
    ),
    type: BottomNavigationBarType.fixed,
    elevation: 1,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      height: 1.3,
    ),
    caption: TextStyle(color:Colors.grey[800]),
      overline: TextStyle(color:Colors.grey[200]),

      button: TextStyle(color:Colors.grey[200]),
  ),
  fontFamily: 'Jannah',
);


ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: slowBlackColor,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: slowBlackColor,
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: slowBlackColor,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      fontFamily: 'Jost',
      color: Colors.white,
      fontSize: 32.0,
      fontWeight: FontWeight.w800,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: false,
    selectedIconTheme: IconThemeData(
        size: 32,
        color:  Colors.white
    ),
    unselectedIconTheme: IconThemeData(
        size: 24,
        color: Colors.grey[600]
    ),
    type: BottomNavigationBarType.fixed,
    elevation: 1,
    backgroundColor:slowBlackColor,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      height: 1.3,
    ),
    caption: TextStyle(color:Colors.white70),
    overline: TextStyle(color:Colors.black45),
    button: TextStyle(color:Colors.grey[700]),
  ),
  fontFamily: 'Jannah',
);