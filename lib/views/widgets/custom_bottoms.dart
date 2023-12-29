import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazadi_task/core/utiles/app_colors.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import '../../core/utiles/app_radius.dart';

class CustomDefaultBottom extends StatelessWidget {
  const CustomDefaultBottom({super.key, required this.onTap,
    required this.text, required this.icon});
  final Function() onTap ;
  final String text ;
  final String icon ;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onTap,
      height:50 ,
      color:AppColors.primaryColor ,
      shape: RoundedRectangleBorder(
        borderRadius:AppRadius.radius15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          context.spaceHorizontal,
          Text(text,
            style:const TextStyle(color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSlidersBottom extends StatelessWidget {
  const CustomSlidersBottom({super.key, required this.onTap,
    required this.text});
  final Function() onTap ;
  final String text ;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed:onTap,
      height:32 ,
      color:AppColors.primaryColor ,
      minWidth: 128,
      shape: RoundedRectangleBorder(
        borderRadius:AppRadius.radius360,
      ),
      child:Text(text,
       style: const TextStyle(color: Colors.white,
       fontWeight: FontWeight.w500,
       ),
      ) ,
    );
  }
}

