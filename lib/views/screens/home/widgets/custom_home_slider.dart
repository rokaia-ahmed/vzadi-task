import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vazadi_task/core/constants/app_string.dart';
import 'package:vazadi_task/core/utiles/app_colors.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import 'package:vazadi_task/views/widgets/custom_bottoms.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/utiles/app_padding.dart';
import '../../../../core/utiles/app_radius.dart';
import '../../../widgets/text_styles.dart';

class CustomHomeSlider extends StatelessWidget {
   CustomHomeSlider({super.key});
  final List<String> images = [
    AppImage.slider1,
    AppImage.slider2,
    AppImage.slider3,
  ];
  final List<String> titles = [
    AppString.manage,
    AppString.multi,
    AppString.leasing,
  ];
  final List<String> textBottom = [
    AppString.request,
    AppString.order,
    AppString.myAssets,
  ];
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
      items: List.generate(
          images.length,
              (index){
            return Column(
              children: [
                Expanded(
                  child: Container(
                    height: context.height*0.25,
                    width: double.infinity,
                    padding:padding10 ,
                    decoration: BoxDecoration(
                      color:AppColors.lightRedColor,
                      borderRadius: AppRadius.radius10,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(titles[index],
                                maxLines: 3,
                                style:TextStyles.text16,
                              ),
                              context.spaceVertical,
                              if(index == 0)
                              Text(AppString.utilizing,
                              style:TextStyles.subTitle ,
                              ),
                              context.spaceVertical,
                              CustomSlidersBottom(onTap: () {  },
                                text: textBottom[index],),
                            ],
                          ),
                        ),
                        Image.asset(images[index],
                          height:context.height*0.2 ,
                          width:context.width*0.3 ,
                          fit: BoxFit.fill,
                          errorBuilder:(context,_,error){
                            return const SizedBox();
                          } ,
                        ),
                      ],
                    ),
                  ),
                ),
                context.spaceVertical,
                AnimatedSmoothIndicator(
                  count:3 ,
                  activeIndex: index,
                  duration:const Duration(milliseconds: 900) ,
                  effect:  const ExpandingDotsEffect(
                    activeDotColor: AppColors.primaryColor,
                    dotColor: AppColors.dotGreyColor,
                    dotWidth: 8,
                    dotHeight: 8,
                  ),
                ),
              ],
            );
          }),
      options:CarouselOptions(
        //height: context.height*0.275,
        disableCenter: true,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
      ),
    );
  }
}


