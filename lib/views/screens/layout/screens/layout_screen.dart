import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:vazadi_task/views/screens/layout/cubit/layout_cubit.dart';
import 'package:vazadi_task/views/screens/layout/cubit/layout_states.dart';

import '../widgets/custom_bottom_nav_bar.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit,LayoutStates>(
      bloc: GetIt.I<LayoutCubit>(),
      builder: (context, state) {
        return Scaffold(
          body:GetIt.I<LayoutCubit>().bottomScreens[
          GetIt.I<LayoutCubit>().currentIndex] ,
          bottomNavigationBar: CustomNavBar(),
        );
      },
    );
  }
}
