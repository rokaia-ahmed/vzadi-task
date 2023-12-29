import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vazadi_task/views/screens/home/screens/home_screen.dart';
import '../../profile/screens/profile_screen.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates>{
  LayoutCubit():super(InitLayoutSate());
  int currentIndex =0;
  List<Widget> bottomScreens =[
    const HomeScreen(),
    const Center(child: Text('Assets')),
    const Center(child: Text('Support')),
    const ProfileScreen(),
  ];

  void changeNaveBottom(int index){
    currentIndex = index ;
    emit(ChangeVavBarSate());
  }
}