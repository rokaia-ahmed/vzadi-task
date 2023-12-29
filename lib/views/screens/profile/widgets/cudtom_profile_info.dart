import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazadi_task/core/constants/images.dart';
import 'package:vazadi_task/core/utiles/app_colors.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import 'package:vazadi_task/views/screens/profile/widgets/custom_profile_icon.dart';
import 'package:vazadi_task/views/widgets/text_styles.dart';

class CustomProfileInfo extends StatelessWidget {
  const CustomProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Jenny Wilson',
          style: TextStyles.text19,
          ),
         context.spaceHorizontal,
         SvgPicture.asset(AppImage.icon,
           width: 20,
           height: 20,
         ),
        ],
        ),
        context.spaceVertical,
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Created by',
              style:TextStyle(
                fontSize: 14,
                color: AppColors.textProfileColor,
              ),
            ),
            Text(' @yei',
              style:TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        context.spaceVertical,
        Row(
         children: [
            const CustomProfileIcon(icon: AppImage.emoji),
           context.spaceHorizontal,
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text('Owners',
               style: TextStyle(fontWeight: FontWeight.w600),
               ),
               Text('9',
               style: TextStyles.text19,
               ),
             ],
           ),
           const Spacer(),
           const CustomProfileIcon(icon: AppImage.scale),
           context.spaceHorizontal,
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text('Total sales',
                 style: TextStyle(fontWeight: FontWeight.w600),
               ),
               Row(
                 children: [
                   Text('0.8627 ',
                     style: TextStyles.text19,
                   ),
                   Text('ETH',
                     style: TextStyles.text19.copyWith(
                       fontSize: 14,
                       textBaseline: TextBaseline.alphabetic
                     ),
                   ),
                 ],
               ),
             ],
           ),
            ],
          ),
      ],
    );
  }
}
