import 'package:flutter/material.dart';
import '../../../../core/constants/app_string.dart';
import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.home),
        leading: const DrawerButton(),
      ),
      body:const HomeBody() ,
    );
  }
}
