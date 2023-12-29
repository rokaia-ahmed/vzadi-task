import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:vazadi_task/core/constants/images.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import 'package:vazadi_task/views/widgets/text_styles.dart';
import '../../../../core/constants/app_string.dart';
import '../../../../core/utiles/app_padding.dart';
import '../../../../core/utiles/app_radius.dart';
import '../../../widgets/custom_text_form_field.dart';

class CustomItemsList extends StatelessWidget {
  const CustomItemsList({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          hintText:AppString.search ,
          prefixIcon:Icon(Icons.search_sharp),
        ),
        SizedBox(height:context.height*0.03,),
        FlexibleGridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          axisCount: GridLayoutEnum.twoElementsInRow,
          children: List.generate(4,
                  (index) => const CustomItem(),
          ),
        ),
      ],
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImage.cover,
        height: 150,
        fit: BoxFit.fill,
        ),
        context.spaceVertical,
        Container(
          padding: padding10,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: AppRadius.radius12,
            color: Colors.white,
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sana',
              style: TextStyles.text18,
              ),
              context.spaceVertical,
              Text('Price',
                style: TextStyles.text16,
              ),
              Text('0.08 Eth',
                style: TextStyles.text19.copyWith(fontSize: 16),
              ),
            ],
          ) ,
        ),
      ],
    );
  }
}
