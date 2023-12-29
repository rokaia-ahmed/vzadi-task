import 'package:flutter/material.dart';
import 'package:vazadi_task/core/constants/app_string.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import '../../../../core/utiles/app_colors.dart';
import 'custom_items_list.dart';


class CustomTabsBar extends StatelessWidget {
  const CustomTabsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TabBar(
          labelColor: Colors.black,
         labelStyle: TextStyle(fontWeight: FontWeight.w800),
         unselectedLabelColor:AppColors.textProfileColor ,
         indicatorSize:TabBarIndicatorSize.tab ,
         indicatorColor: Colors.black,
         tabs:[
          Tab(text: AppString.items),
          Tab(text: AppString.analytics),
          Tab(text: AppString.activity),
        ]
        ),
        SizedBox(height: context.height*0.03),
        SizedBox(
          height: context.height*0.9,
          child: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
          children:[
           CustomItemsList(),
           Center(child: Text('analysis')),
           Center(child: Text('activity')),
          ],
          ),
        ),
      ],
    );
  }
}
