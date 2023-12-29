import 'package:flutter/material.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import '../../../../core/constants/app_string.dart';
import '../../../../core/constants/images.dart';
import '../../../widgets/text_styles.dart';

class CustomTopHomeWidget extends StatelessWidget {
  const CustomTopHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(AppImage.person),
            context.spaceHorizontal,
             Text(AppString.hey,
              style:TextStyles.text16 ,
            ),
            context.spaceHorizontal,
            Image.asset(AppImage.hands),
          ],
        ),
        SizedBox(
          height: context.height*0.02,
        ),
         Text(
          AppString.multi,
          style:TextStyles.text18,
        ),
        SizedBox(
          height: context.height*0.01,
        ),
        Text(
          AppString.explore,
          style:TextStyles.subTitle ,
        ),
      ],
    );
  }
}
