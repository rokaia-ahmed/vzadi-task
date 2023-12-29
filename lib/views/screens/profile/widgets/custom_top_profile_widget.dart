import 'package:flutter/material.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import '../../../../core/constants/images.dart';

class CustomTopProfileWidget extends StatelessWidget {
  const CustomTopProfileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Image.asset(AppImage.cover,
          height:context.height*0.33 ,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          top:context.height*0.25 ,
          child: const CircleAvatar(
            radius:50 ,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 47,
              backgroundImage:AssetImage(AppImage.cover) ,
            ),
          ),
        ),
      ],
    );
  }
}
