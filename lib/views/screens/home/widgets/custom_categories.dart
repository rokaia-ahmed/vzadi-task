import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazadi_task/core/constants/images.dart';
import 'package:vazadi_task/core/utiles/app_colors.dart';
import 'package:vazadi_task/views/widgets/text_styles.dart';
import '../../../../core/constants/app_string.dart';

class CustomCategories extends StatelessWidget {
   CustomCategories({super.key});
final List<String> categoryName =[
   'Constructions',
   'Insurances',
   'Legal',
   'Buy & Sell',
   'Accounting Services',
 ];
   final List<String> categoryIcon =[
     AppImage.constructions,
     AppImage.insurances,
     AppImage.legal,
     AppImage.buy,
     AppImage.accounting,
   ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(AppString.categoriesView),
            InkWell(
                onTap:(){} ,
                child: Text(AppString.seeAll,
                style: TextStyles.subTitle.copyWith(
                  decoration: TextDecoration.underline,),
                ),
            ),
          ],
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount:categoryName.length ,
            separatorBuilder:(context,index)=>Container(
              height: 1,
              width: double.infinity,
              color: AppColors.tabsGreyColor,
            ) ,
            itemBuilder: (context,index)=>
                CustomCategoryItem(
                  categoryName:categoryName[index],
                  icon: categoryIcon[index],
                  onTap: () { },),
        ),
      ],
    );
  }
}
class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key,
    required this.categoryName, required this.onTap, required this.icon});
  final String categoryName ;
  final String icon ;
  final Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 10),
        leading:SvgPicture.asset(icon),
        minLeadingWidth: 10,
        title:Text(categoryName),
        trailing: SvgPicture.asset(AppImage.arrow),
      ),
    );
  }
}
