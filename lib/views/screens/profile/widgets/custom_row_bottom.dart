import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazadi_task/core/constants/images.dart';
import 'package:vazadi_task/core/router/router.dart';
import 'package:vazadi_task/core/utiles/app_colors.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import 'package:vazadi_task/views/screens/users/screens/users_screen.dart';
import 'package:vazadi_task/views/widgets/custom_bottoms.dart';
import '../../../../core/constants/app_string.dart';
import '../../../../core/utiles/app_radius.dart';

class CustomRowBottom extends StatelessWidget {
  const CustomRowBottom({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDefaultBottom(
            onTap: (){
              MagicRouter.navigateTo(const UsersScreen());
            },
            text: AppString.watchList,
            icon: AppImage.asterisk,),
        ),
        SizedBox(width: context.width*0.02,),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
             borderRadius: AppRadius.radius15,
             border: Border.all(
                color: AppColors.lightGreyColor,
             ),
          ),
          child:Center(
            child: SvgPicture.asset(
              AppImage.dots,
            width: 24, height: 24,
            ),
          ) ,
        ),
      ],
    );
  }
}
