import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utiles/app_colors.dart';

class CustomProfileIcon extends StatelessWidget {
  const CustomProfileIcon({super.key, required this.icon});
 final String icon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        //  color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(
            color: AppColors.lightGreyColor,
            width: 1
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.fitHeight,
          height: 20, width: 20,),
      ),
    );
  }
}
