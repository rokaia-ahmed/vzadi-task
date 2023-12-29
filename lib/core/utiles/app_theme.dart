
import 'package:flutter/material.dart';
import 'package:vazadi_task/core/utiles/app_colors.dart';

ThemeData appLightTheme = ThemeData(
  fontFamily: 'Outfit',
  primaryColor: AppColors.primaryColor,
  useMaterial3: false,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: AppColors.primaryColor,
    secondary: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    toolbarHeight:50 ,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
    elevation: 0.5,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),
  ),
);
