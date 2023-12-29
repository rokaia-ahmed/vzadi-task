import 'package:flutter/material.dart';
import 'package:vazadi_task/core/network/appbinding.dart';
import 'package:vazadi_task/core/utiles/app_theme.dart';
import 'core/router/router.dart';
import 'views/screens/layout/screens/layout_screen.dart';

void main() async{
  await AppBinding.initAsyncDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: appLightTheme,
      home: const LayoutScreen(),
    );
  }
}

