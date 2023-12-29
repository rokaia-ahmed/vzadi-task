import 'package:flutter/material.dart';
import 'package:vazadi_task/core/utiles/app_size.dart';
import 'package:vazadi_task/views/screens/profile/widgets/cudtom_profile_info.dart';
import 'package:vazadi_task/views/screens/profile/widgets/custom_row_bottom.dart';
import 'package:vazadi_task/views/screens/profile/widgets/custom_top_profile_widget.dart';

import 'custom_tabs_bar.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10,5),
            child: Column(
              children: [
                const CustomTopProfileWidget(),
                SizedBox(
                  height:context.height*0.09 ,
                ),
                const CustomProfileInfo(),
                SizedBox(
                  height:context.height*0.03 ,
                ),
                const CustomRowBottom(),
                SizedBox(
                  height:context.height*0.03 ,
                ),
                const CustomTabsBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
