import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:vazadi_task/core/utiles/app_padding.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import '../../../../core/constants/app_string.dart';
import '../../../../core/utiles/app_colors.dart';
import '../cubit/layout_cubit.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key,});
  final List icons = [
    Icons.home_filled,
    Icons.dashboard_customize_outlined,
    Icons.support_agent,
    Icons.person_outline_outlined,];
  final List labels = [
    AppString.home,
    AppString.assets,
    AppString.support,
    AppString.profile,];
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: 4,
      activeIndex: GetIt.I<LayoutCubit>().currentIndex,
      gapLocation: GapLocation.none,
      height: 55,
      elevation: 20,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      onTap: (index)=>
          GetIt.I<LayoutCubit>().changeNaveBottom(index),
      tabBuilder: (int index, bool isActive) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons[index],
              color: isActive ? AppColors.primaryColor
                  : AppColors.lightGreyColor,
              size: 25,
            ),
            context.spaceVertical,
            Text(labels[index],
              style:TextStyle(
                height: 0.5,
                color: isActive ? AppColors.primaryColor
                    : AppColors.lightGreyColor,
              ),
            ),
          ],
        );
      },
    );
  }
}
