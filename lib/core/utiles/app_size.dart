
import 'package:flutter/material.dart';

extension AppSize on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  double get topPadding => MediaQuery.of(this).viewPadding.top;
  double get bottomPadding => MediaQuery.of(this).viewPadding.bottom;
  bool get isDarkTheme =>
      MediaQuery.of(this).platformBrightness == Brightness.dark;
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  Widget get spaceVertical => SizedBox(height: height*0.01,);
  Widget get spaceHorizontal => SizedBox(width: width*0.01,);
}

