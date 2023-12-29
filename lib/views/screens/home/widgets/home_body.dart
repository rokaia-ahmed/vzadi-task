import 'package:flutter/material.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import 'package:vazadi_task/views/screens/home/widgets/custom_tabs.dart';
import 'package:vazadi_task/views/screens/home/widgets/custom_top_home_widget.dart';
import 'custom_home_slider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTopHomeWidget(),
            SizedBox(
              height: context.height*0.03,
            ),
            CustomHomeSlider(),
            SizedBox(
              height: context.height*0.02,
            ),
            const CustomTabs(),
          ],
        ),
      ),
    );
  }
}
